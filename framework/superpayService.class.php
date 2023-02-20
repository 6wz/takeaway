<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: xushb <854238496@qq.com>
// +----------------------------------------------------------------------
// namespace api\wxapp\service\payments;
// use think\facade\Config;
// use think\facade\Log;


class superpayService{
    public $setting;
    public $appid;
    public $pay_gateway_url="https://gate.supaytechnology.com/api/gateway/merchant/order";
    public $rate_url="https://api.mch.weixin.qq.com/pay/queryexchagerate";
    public $refund_url="";
    public $currency;

    public function __construct($setting,$appid){
        $this->setting=$setting;
        $this->appid=$appid;
        // $this->currency=Config::get('currency.');
        if(empty($this->setting['currency_rate_drift'])){
            $this->setting['currency_rate_drift']=0;
        }
    }

    public function miniApp($order_no,$openid,$price,$notify_url,$goods_names){
        $mch_id='';
        $md5key='';
        
        if($this->appid==$this->setting['appid']){
            $mch_id=$this->setting['mchId'];
            $md5key=$this->setting['md5Key'];
        }elseif($this->appid==$this->setting['subAppid']){
            $mch_id=$this->setting['subMchId'];
            $md5key=$this->setting['subMd5Key'];
        }
        $params=[
            'service'   =>  'create_instant_trade',
            'mch_id'    =>  $mch_id,
            'charset'   =>  'UTF-8',
            'version'   =>  '1.0',
            'call_back_url' =>  $notify_url,
            'store_name'    =>  '默认店铺',
            'recevice_id'   =>  $mch_id,
            'mch_order_no'  =>  $order_no,
            'pay_way'       =>  'JSAPI',
            'pay_channel'   =>  'WXPAY',
            'subOpenId' =>  $openid,
            // 'currency'  =>  $this->currency[0]['abbr'],
            'currency' => "AUD",
            'pay_amount'    =>  $price,
            'goods_price'   =>  $price,
            'quantity'      =>  1,
            'goods_name'    =>  $goods_names,
            'goods_desc'    =>  $goods_names,
            'timeout_express'   =>  '1d'
        ];
        $sign=self::getSign($params,$md5key);
        // echo $sign;exit;
        $params['sign_type']='MD5';
        $params['sign']=$sign;
        // Log::info('订单支付-superpay参数');
        // Log::info($params);
        // Log::info(json_encode($params,JSON_UNESCAPED_UNICODE));
        
        $res_json=self::http_post($this->pay_gateway_url,$params,true); 
        // Log::info($res_json);
        $res=json_decode($res_json,true); 
        // Log::info($res);
        // Log::save();
        // var_dump($res);exit;
        if($res['status'] === 'T') {
            return json_decode($res['data']['pay_info'],true);
        }else{
            return [
                'code' => -1,
                'msg' => '支付失败，' . (isset($res['message']) ? $res['message'] : ''),
                'res' => $res,
            ];
        }
    }

    public function createRateQuery() {
        //使用微信汇率查询接口
        $params =[
            "appid"     =>  'wxe289a83c760ddc82',
            "mch_id"    =>  '1577709531',
            // "fee_type"  =>  $this->currency[0]['abbr'],
            "fee_type"  =>  "AUD",
            "date"      =>  date("Ymd")
        ];
        
        $params['sign'] =   self::getSign($params,'eidetikaeidetikaeidetikaeidetika');
        $xml   =    arrayToXml($params);
        $res   =    self::http_post($this->rate_url,$xml);
        $res   =    xmlToArray($res);
        if(isset($res['return_code'])&&$res['return_code']==='SUCCESS'){
            if(!empty($this->setting['currency_rate_drift'])){
                $res["rate"]=$res["rate"]*(1+$this->setting['currency_rate_drift']/100);
            }
            $response   =   round($res['rate']/100000000,4);
        }else{
            $response   =   '0.0000';
        }
        return $response;
    } 

    public function orderRefund($out_trade_no,$amount,$merchant_trade_no,$notify_url){
        $mch_id='';
        $md5key='';
        
        if($this->appid==$this->setting['appid']){
            $mch_id=$this->setting['mchId'];
            $md5key=$this->setting['md5Key'];
        }
        $param = array();
        $param['service'] = "create_refund";
        $param['mch_id'] = $mch_id;
        $param['charset'] = "UTF-8";
        $param['version'] = "1.0";
        //$param['call_back_url'] = $notify_url;
        $param['mch_order_no'] = $merchant_trade_no;
        $param['orig_mch_order_no'] = $out_trade_no;
        $param['refund_amount'] = $amount;
        $sign = self::getSign($param,$md5key);
        $param['sign'] = $sign;
        $param['sign_type'] = "MD5";
		
        // var_dump($param); die();
        // var_dump(json_encode($param)); die();
        // var_dump(is_array($param)); die();
        $res_json=self::http_post($this->pay_gateway_url,$param,true); 
        $res_json=json_decode($res_json,true);

        if($res_json['status'] == "T"){
            return $res_json['data']['result'];
        }
        
    }


    /**
     * GETGET 请求
     * @param string $url
     */
    public function http_get($url){
        $oCurl = curl_init();
        if(stripos($url,"https://")!==FALSE){
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, FALSE);
            curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
        }
        curl_setopt($oCurl, CURLOPT_URL, $url);
        curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1 );
        $sContent = curl_exec($oCurl);
        $aStatus = curl_getinfo($oCurl);
        curl_close($oCurl);
        if(intval($aStatus["http_code"])==200){
            return $sContent;
        }else{
            return false;
        }
    }

    /**
     * POST 请求
     * @param string $url
     * @param array $param
     * @param boolean $json 是否json
     * @return string content
     */
    public function http_post($url,$param,$json=false){
        $oCurl = curl_init();
        if(stripos($url,"https://")!==FALSE){
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, false);
            curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
        }
        if($json && is_array($param)){
            $param = json_encode($param,JSON_UNESCAPED_UNICODE);
        }
        curl_setopt($oCurl, CURLOPT_URL, $url);
        curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt($oCurl, CURLOPT_POST,true);
        curl_setopt($oCurl, CURLOPT_POSTFIELDS,$param);
        if($json){
            $header=array(
                'Content-Type: application/json; charset=utf-8',
                'Content-Length:' . strlen($param)
            );
            curl_setopt($oCurl, CURLOPT_HEADER, 0);
            curl_setopt($oCurl, CURLOPT_HTTPHEADER,$header);
        }
        $sContent = curl_exec($oCurl);
        $aStatus = curl_getinfo($oCurl);
        curl_close($oCurl);
        if(intval($aStatus["http_code"])==200){
            return $sContent;
        }else{
            return false;
        }
    }

    public static function getSign($arr,$key){
        foreach ($arr as $k => $v) {
            $Parameters[$k] = $v;
        }
        //签名步骤一：按字典序排序参数
        ksort($Parameters);
        $String = self::formatBizQueryParaMap($Parameters, false);
        // Log::info($String);
        //签名步骤二：在string后加入KEY
        $String = $String . "&key=".$key;
        // var_dump($String); die();
        // Log::info($String);
        //签名步骤三：HMAC-SHA256加密
        $String = md5($String);
        //签名步骤四：所有字符转为大写
        $result_ = strtoupper($String);
        
        return $result_;
    }
    public static function getSign2($arr){
        foreach ($arr as $k => $v) {
            $Parameters[$k] = $v;
        }
        //签名步骤一：按字典序排序参数
        ksort($Parameters);
        $String = self::formatBizQueryParaMap($Parameters, false);
        // Log::info($String);
        //签名步骤二：在string后加入KEY
        // $String = $String;
        // Log::info($String);
        //签名步骤三：HMAC-SHA256加密
        $String = md5($String);
        $result_ = $String;
        //签名步骤四：所有字符转为大写
        // $result_ = strtoupper($String);
        
        return $result_;
    }

    public static function formatBizQueryParaMap($paraMap, $urlencode){
        $buff = "";
        ksort($paraMap);
        foreach ($paraMap as $k => $v) {
            if ($urlencode) {
                $v = urlencode($v);
            }
            $buff .= $k . "=" . $v . "&";
        }
        $reqPar = '';
        if (strlen($buff) > 0) {
            $reqPar = substr($buff, 0, strlen($buff) - 1);
        }
        return $reqPar;
    }
}
?>