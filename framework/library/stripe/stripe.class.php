<?php
/**
 * Created by cpp.
 * User: 陈平平
 * Date: 2020/5/19
 * Time: 16:35
 */
require "init.php";
class stripe{
 private static $sk='sk_live_Xmt6JTsLpE5QFP0gTw9rYM0f00SiMoUH7j';
 private static $pk='pk_live_SRTIrBqTO4Xsy12T8dxDghep00w6NCuUkY';
 private static $wk='whsec_xSqBoBHfG0hoa1t7WAxoEnNRpBtmabcK';
// private static $sk='sk_test_DMVv3Vibpmvn7y0WhKb42eXm00PeWH26gJ';
 //private static $pk='pk_test_ICyjieumtFpGfkqj5pIz7iuD00NI7Ne8Ez';
 public function __construct($sk){
  \Stripe\Stripe::setApiKey($sk); 
 }
 public function get_card_list($customer_id){
   $result=\Stripe\Customer::allSources(
    $customer_id,
   ['object' => 'card',]
   );
   return $result['data'];
 }
 public function get_card_info($stripe_info,$card_id){
   $customer = \Stripe\Customer::retrieve($stripe_info['stripe_id']);
   $cardinfo=\Stripe\Customer::retrieveSource(
   $stripe_info['stripe_id'],
   $card_id
   );
   $arr['cno']="**** **** **** ".$cardinfo['last4'];
   $arr['email']=$customer->email;
   $exp_year=substr($cardinfo['exp_year'],2);
   $exp_month=$cardinfo['exp_month'];
   if($exp_month<10){$exp_month='0'.$exp_month;}
   $arr['exp']=$exp_month."/".$exp_year;
   $arr['cvc']="***";
   $arr['card_id']=$card_id;
   if($card_id==$customer->default_source){
     $arr['def']=1;
   }else{
     $arr['def']=0;
   }
   return $arr;
 }
 public function updatecard($stripe_info,$card_id,$sdef,$email,$exp_year,$exp_month){
 		 $customer = \Stripe\Customer::retrieve($stripe_info['stripe_id']);
		 try{
		   $updatearr['email']=$email;
		   if($sdef==1){
		    $updatearr['default_source']=$card_id;
		   }
		   \Stripe\Customer::update(
			   $stripe_info['stripe_id'],
			   $updatearr
			);	
		
			\Stripe\Customer::updateSource(
			  $stripe_info['stripe_id'],
			  $card_id,
			  array('exp_month' =>$exp_month,'exp_year' =>$exp_year)
			);		     
		   $arr=array('code'=>0,'cus_id'=>$stripe_info['stripe_id'],'card_id'=>$card_id);
		   return $arr; 
		 }catch(\Stripe\Exception\InvalidRequestException $e){
	        $arr=array('code'=>1,'msg'=>$e->getMessage());
	        return $arr; 
		 }
 }
 
 public function Charge($stripe_info,$log,$uid,$bz){
   try {
	 $charge = \Stripe\Charge::create(array(
	 'customer' =>$stripe_info['stripe_id'],
	 'amount'   =>$log['fee']*100,
	 'currency' =>$bz,
	 "description" => "信用卡支付",
	 'metadata' => ['plid' =>$log['plid'],'uniontid'=>$log['uniontid'],'tid'=>$log['tid'],'uid'=>$uid],
	 ));  
	 $arr=array('code'=>0,'msg'=>"提交支付成功");
   } catch(\Stripe\Error\Card $e) {
     $arr=array('code'=>2,'msg'=>$e->getMessage());
     return $arr;
   }catch(\Exception $e){
     $arr=array('code'=>2,'msg'=>$e->getMessage());
     return $arr;   
   }
  
  return $arr;
 } 

 public function addcard($cno,$email,$cvc,$exp_year,$exp_month,$sdef){
   $return=$this->curl_checkout($cno,$cvc,$exp_year,$exp_month);
   if($return['id']){
    try{
		  $result=\Stripe\Customer::create(array(
		  'email' =>$email,
		  'source'=>$return['id']
		 ));
		 if($result->id){
		   $arr=array('code'=>0,'cus_id'=>$result->id,'card_id'=>$return['card']['id']);
		   return $arr; 
		 }else{
		   $arr=array('code'=>1,'msg'=>'添加失败');
		   return $arr; 
		 }
	}catch(\Stripe\Exception\InvalidRequestException $e) {
	  $arr=array('code'=>1,'msg'=>$e->getMessage());
	   return $arr; 
	}catch(\Stripe\Exception\CardException $e){
	   $arr=array('code'=>1,'msg'=>$e->getMessage());
	   return $arr; 
	}
	catch (\Exception $e) { 
	   $arr=array('code'=>1,'msg'=>$e->getMessage());
	   return $arr; 
	}
   }else{
     $arr=array('code'=>1,'msg'=>$return['error']['code']);
	 return $arr;
   }
 }
 
 public function addcard2($stripe_info,$cno,$email,$cvc,$exp_year,$exp_month,$sdef){
    $return=$this->curl_checkout($cno,$cvc,$exp_year,$exp_month);
    if($return['id']){
		 $customer = \Stripe\Customer::retrieve($stripe_info['stripe_id']);
		 try{
		   $customer->sources->create(array("source" =>$return['id'])); 
		   $updatearr['email']=$email;
		   if($sdef==1){
		    $updatearr['default_source']=$return['card']['id'];
		   }
		   \Stripe\Customer::update(
			   $stripe_info['stripe_id'],
			   $updatearr
			);		   
		   $arr=array('code'=>0,'cus_id'=>$stripe_info['stripe_id'],'card_id'=>$return['card']['id']);
		   return $arr; 
		 }catch(\Stripe\Exception\InvalidRequestException $e){
	        $arr=array('code'=>1,'msg'=>$e->getMessage());
	        return $arr; 
		}catch(\Stripe\Exception\CardException $e){
	      $arr=array('code'=>1,'msg'=>$e->getMessage());
	      return $arr; 
    	}catch (\Exception $e) { 
	      $arr=array('code'=>1,'msg'=>$e->getMessage());
	      return $arr; 
    	}
	 
		 
    }else{
     $arr=array('code'=>1,'msg'=>$return['error']['code']);
	 return $arr;
    }
 }

 public function curl_checkout($cno,$cvc,$exp_year,$exp_month){
   try{
	$token = \Stripe\Token::create(array(
	 "card" => array(     //这个就是卡
	  "number" =>$cno,  //卡号
	  "exp_month" =>$exp_month, //有效期月
	  "exp_year" =>$exp_year, //有效期年
	  "cvc" =>$cvc //安全码       有这几个就可以支付了
	  )
	));	
	$arr['id']=$token->id;
	return $arr;
   }catch (\Exception $e) { 
     $arr['error']['code']=$e->getMessage();
	 return $arr;
   }
	
 }
}

?>