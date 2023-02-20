<?php 
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
icheckauth();
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "list");
$_W["agentid"] = (0 < intval($_GPC["agentid"]) ? intval($_GPC["agentid"]) : $_W["agentid"]);

mload()->model("payment");
$payconfig=$_W["we7_wmall"]["config"]["payment"]['stripe'];
load()->library('stripe/stripe.class');
$stripe_obj=new stripe($payconfig['sk']);
if($ta=='cardinfo'){
 $stripe_info=pdo_get("ims_tiny_wmall_stripe",array('acid'=>$_W["uniacid"],'uid'=>$_W["member"]["uid"]));
 $card_id=$_GPC['card_id'];
 $cardinfo=$stripe_obj->get_card_info($stripe_info,$card_id);
 imessage(array('code'=>0,'msg'=>$cardinfo), "", "ajax");
}
if($ta=='list'){
  $stripe_info=pdo_get("ims_tiny_wmall_stripe",array('acid'=>$_W["uniacid"],'uid'=>$_W["member"]["uid"]));
  $cardlist=array();
  if(!empty($stripe_info)){
   $customer_id=$stripe_info['stripe_id'];
   $cardlist=$stripe_obj->get_card_list($customer_id);
  } 
   imessage(array('code'=>0,'msg'=>$cardlist), "", "ajax");
}
if( $ta == "addcard" ) {
  $stripe_info=pdo_get("ims_tiny_wmall_stripe",array('acid'=>$_W["uniacid"],'uid'=>$_W["member"]["uid"]));
  $cno=$_GPC['cno'];
  $email=$_GPC['email'];
  $exp=explode("/",$_GPC['exp']);
  $cvc=(int) $_GPC['cvc'];
  $sdef=(int) $_GPC['sdef'];
  $card_id=$_GPC['card_id'];
  $code=0;
  if(!preg_match("/^\d+$/",$cno) && empty($card_id)){
   imessage(array('code'=>1,'msg'=>'incorrect_number'), "", "ajax");die();
  }
  if(!preg_match("/^\d+$/",$cvc) && empty($card_id)){
   imessage(array('code'=>1,'msg'=>'incorrect_cvc'), "", "ajax");die();
  }
  $pattern = "/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/";
  if(!preg_match($pattern,$email)){
   imessage(array('code'=>1,'msg'=>'incorrect_email'), "", "ajax");die();
  }
  if($exp[0]<10 && strlen($exp[0])==1){$exp_month='0'.$exp[0];}else{$exp_month=$exp[0];}
  $exp_year='20'.$exp[1];
  if(!empty($card_id)){
   $return=$stripe_obj->updatecard($stripe_info,$card_id,$sdef,$email,$exp_year,$exp_month);
  }else{
	  if(empty($stripe_info)){
		$return=$stripe_obj->addcard($cno,$email,$cvc,$exp_year,$exp_month,$sdef);
		if($return['code']==0){
		 pdo_insert("ims_tiny_wmall_stripe",array('acid'=>$_W["uniacid"],'uid'=>$_W["member"]["uid"],'stripe_id'=>$return['cus_id'],'card_id'=>$return['card_id']));
		}
	  }else{
	   $return=$stripe_obj->addcard2($stripe_info,$cno,$email,$cvc,$exp_year,$exp_month,$sdef);
	   if($sdef==1 && $return['code']==0){
		 pdo_update("ims_tiny_wmall_stripe",array('card_id'=>$return['card_id']), array("id" =>$stripe_info['id'] ));
	   }
	  }
  }
  imessage($return, "", "ajax");
}
   
?>