<?php
define("IN_WXAPP", 1);
require("framework/bootstrap.inc.php");
require("addons/we7_wmall/payment/__init.php");
require("addons/we7_wmall/class/TyAccount.class.php");
$_W["weid"] =2;
$_W["uniacid"] = $_W["weid"];
$_W["account"] = uni_fetch($_W["uniacid"]);
$_W["uniaccount"] = $_W["account"];
$_W["acid"] = $_W["uniaccount"]["acid"];
                $res=$_REQUEST; 
				file_put_contents("att.txt",json_encode($res));
				$tid=$res['merchant_trans_no'];
				$log = pdo_fetch("SELECT * FROM " . tablename("core_paylog") . " WHERE `tid`=:tid", array( ":tid" =>$tid));
				if( !empty($log) && $log["status"] == "0" ){
							$log["tag"] = iunserializer($log["tag"]);
							$log["tag"]["transaction_id"] =$res['attractpay_trans_no'];
							$log["tag"]["uid"]=$uid;
							$log["transaction_id"]=$res['attractpay_trans_no'];
							$log["uid"] =$log["tag"]["uid"];
							$log["type"] = "attractpay";
							$record = array( "type" => "attractpay", "status" => 1, "tag" => iserializer($log["tag"]) );
							pdo_update("core_paylog", $record, array( "plid" => $log["plid"] ));
							$site = WeUtility::createModuleSite($log["module"]);
							if( !is_error($site) ){
								$method = "payResult";
							  if( method_exists($site, $method) ){
									$ret = array(  );
									$ret["uniacid"] = $log["uniacid"];
									$ret["acid"] = $log["acid"];
									$ret["result"] = "success";
									$ret["type"] =$log["type"];
									$ret["channel"] ='wxapp';
									$ret["from"] = "notify";
									$ret["tid"] = $log["tid"];
									$ret["uniontid"] = $log["uniontid"];
									$ret["transaction_id"] = $log["transaction_id"];
									$ret["trade_type"] ='JSAPI';
									$ret["follow"] =0;
									$ret["user"] =log["openid"];
									$ret["fee"] = $log["fee"];
									$ret["tag"] = $log["tag"];
									$ret["is_usecard"] = $log["is_usecard"];
									$ret["card_type"] = $log["card_type"];
									$ret["card_fee"] = $log["card_fee"];
									$ret["card_id"] = $log["card_id"];
									$site->$method($ret);
							  }
							 }
				}
?>




