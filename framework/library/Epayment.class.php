<?php
/**
 * Created by cpp.
 * User: 陈平平
 * Date: 2020/5/13
 * Time: 15:09
 */
class Epayment{
    public $mch_store_id='';
    public $authentication_code='';
    //测试
    public $pay_gateway_url="https://www.kiwifast.com/api/v1/info/smartpay";
    public function __construct($mch_store_id,$authentication_code){
        $this->mch_store_id=$mch_store_id;
        $this->authentication_code=$authentication_code;
    }

    public function createPay($order_no,$openid,$appid,$price,$notify_url,$goods_names,$currency){
        $params=array();
        $params['merchant_id'] = $this->mch_store_id;
        $params['increment_id'] = $order_no;
		$params['sub_appid'] = $appid;
		$params['sub_openid'] = $openid;
		$params['grandtotal'] =$price;
		$params['payment_channels'] ="WECHAT";
		$params['notify_url'] =$notify_url;
		$params['subject'] =$goods_names;
		$params['describe'] =urlencode($goods_names);
		$params['nonce_str'] ="ruigewepay";
		$params['currency'] =$currency;
		$params['service'] ="create_miniapp_pay";
		ksort($params);
		$querystr="currency=NZD&describe=".$params['describe']."&grandtotal=".$params['grandtotal']."&increment_id=".$params['increment_id']."&merchant_id=".$params['merchant_id']."&nonce_str=".$params['nonce_str']."&notify_url=".$params['notify_url']."&payment_channels=".$params['payment_channels']."&service=".$params['service']."&sub_appid=".$params['sub_appid']."&sub_openid=".$params['sub_openid']."&subject=".$params['subject'];
		$querystr=$querystr.$this->authentication_code;
		$params['signature'] =md5($querystr);
        $params['sign_type'] ="MD5";
		$purl=$this->pay_gateway_url."?".http_build_query($params);
        $res_json=self::http_get($purl); 
        $res=json_decode($res_json,true);
	    if($res['code']==0){
		 $result=json_decode($res['payJson'],true);
		 $result['code']=0;
		}else{
		 $result=$res;
		}
	    return $result;
    }

    public function orderRefund($merchant_trade_no,$amount,$refund_no,$notify_url){
	
	    $params["merchant_id"]  = $this->mch_store_id;
		$params["increment_id"]  =$merchant_trade_no;
		$params["currency"]  ="NZD";
		$params["refund_fee"]  =$amount;
		$params["service"]  ="create_trade_refund";
	    $params["nonce_str"]  ="abc123";
		ksort($params);
		$querystr="currency=NZD&&increment_id=".$params['increment_id']."&merchant_id=".$params['merchant_id']."&nonce_str=".$params['nonce_str']."&refund_fee=".$params['refund_fee']."&service=".$params['service'];
		$querystr=$querystr.$this->authentication_code;
		$params['signature'] =md5($querystr);
        $params['sign_type'] ="MD5";
		$purl=$this->pay_gateway_url."?".http_build_query($params);
        $res_json=self::http_get($purl); 
        $res=json_decode($res_json,true);
	    if($res['code']==0){
	      return true;
		}else{
		  return false;
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
     * @param boolean $post_file 是否文件上传
     * @return string content
     */
    public function http_post($url,$param,$post_file=false){
        $oCurl = curl_init();
        if(stripos($url,"https://")!==FALSE){
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, false);
            curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
        }
         
        curl_setopt($oCurl, CURLOPT_URL, $url);
        curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt($oCurl, CURLOPT_POST,true);
        curl_setopt($oCurl, CURLOPT_POSTFIELDS,$param);
        $sContent = curl_exec($oCurl);
        $aStatus = curl_getinfo($oCurl);
        curl_close($oCurl);
        if(intval($aStatus["http_code"])==200){
            return $sContent;
        }else{
            return false;
        }
    }
}