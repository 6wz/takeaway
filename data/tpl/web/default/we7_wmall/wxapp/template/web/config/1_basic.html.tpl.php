<?php defined('IN_IA') or exit('Access Denied');?><?php  include itemplate('public/header', TEMPLATE_INCLUDEPATH);?>
<div class="page clearfix">
	<h2>基础设置</h2>
	<form class="form-horizontal form form-validate" id="form1" action="" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">是否开启小程序</label>
			<div class="col-sm-9 col-xs-12">
				<div class="radio radio-inline">
					<input type="radio" value="1" name="status" id="status-1" <?php  if($wxapp['status'] == 1) { ?>checked<?php  } ?> required>
					<label for="status-1">开启</label>
				</div>
				<div class="radio radio-inline">
					<input type="radio" value="0" name="status" id="status-0" <?php  if($wxapp['status'] == 0) { ?>checked<?php  } ?> required>
					<label for="status-0">关闭</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">小程序审核状态</label>
			<div class="col-sm-9 col-xs-12">
				<div class="radio radio-inline">
					<input type="radio" value="0" name="audit_status" id="version-0" <?php  if($wxapp['audit_status'] == 0) { ?>checked<?php  } ?> required>
					<label for="version-0">待提交微信审核</label>
				</div>
				<div class="radio radio-inline">
					<input type="radio" value="1" name="audit_status" id="version-1" <?php  if($wxapp['audit_status'] == 1) { ?>checked<?php  } ?> required>
					<label for="version-1">微信官方审核中</label>
				</div>
				<div class="radio radio-inline">
					<input type="radio" value="2" name="audit_status" id="version-2" <?php  if($wxapp['audit_status'] == 2) { ?>checked<?php  } ?> required>
					<label for="version-2">微信官方审核通过并已发布</label>
				</div>
				<div class="help-block text-danger">
					注意:如果您的使用的是平台模式（不是单店模式）,如果是平台模式,微信官方在审核小程序版本时,要求您选择类目为"餐饮-外卖平台",但是,外卖平台需要上传电信增值许可证。
					<br/>
					<span class="text-danger">
						此项仅对 小程序提交审核至小程序提交审核后 有效。小程序在审核通过并发布之后，你需要将此项目设置为：微信官方审核通过并已发布。发布后，小程序无法由平台切换为单店版本
					</span>
				</div>
				<div class="help-block">
					<span class="text-danger">
						2018年7月6日以后，小程序提交审核时候，系统会自动处理，当官方审核的时候显示单店铺版本，当顾客访问的时候，显示平台版本
						<br/>
						扫体验二维码，如果您设置的“微信官方审核中”，将直接跳转到单店铺。如果您设置的“待提交微信审核”，将直接跳转到平台。
						<br/>
						您在上传代码后，如果想查看测试新版本效果，可将此项设置为“待提交微信审核”。但是提交审核后，需要设置为“微信官方审核中”
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">小程序审核时默认门店</label>
			<div class="col-sm-9 col-xs-12">
				<select class="form-control" name="default_sid">
					<option value="">==请选择默认门店==</option>
					<?php  if(is_array($stores)) { foreach($stores as $store) { ?>
					<option value="<?php  echo $store['id'];?>" <?php  if($wxapp['default_sid'] == $store['id']) { ?>selected<?php  } ?>><?php  echo $store['title'];?></option>
					<?php  } } ?>
				</select>
				<div class="help-block">
					<span class="text-danger">
						注意:此项必须选择。用于提交微信审核时，展示给审核人员的单店铺
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">审核时进入默认门店跳转到</label>
			<div class="col-sm-9 col-xs-12">
				<div class="radio radio-inline">
					<input type="radio" value="home" name="store_url" id="store_url-home" <?php  if($wxapp['store_url'] == 'home' || !$wxapp['store_url']) { ?>checked<?php  } ?> required>
					<label for="store_url-home">跳转到自定义门店首页</label>
				</div>
				<div class="radio radio-inline">
					<input type="radio" value="goods" name="store_url" id="store_url-goods" <?php  if($wxapp['store_url'] == 'goods') { ?>checked<?php  } ?> required>
					<label for="store_url-goods">跳转到门店点餐页</label>
				</div>
				<div class="help-block">注意：若跳转到门店首页，需先到商户后台-装修-门店首页，对首页进行设置并保存才有效。</div>
				<div class="help-block">
					<span class="text-danger">
						注意:此项必须选择。用于提交微信审核时，展示给审核人员的单店铺
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">顾客公众号模板消息跳转</label>
			<div class="col-sm-9 col-xs-12">
				<div class="radio radio-inline">
					<input type="radio" value="wxapp" name="tpl_consumer_url" id="tpl_consumer_url-wxapp" <?php  if($wxapp['tpl_consumer_url'] == 'wxapp') { ?>checked<?php  } ?> required>
					<label for="tpl_consumer_url-wxapp">跳转到小程序页面</label>
				</div>
				<div class="radio radio-inline">
					<input type="radio" value="wechat" name="tpl_consumer_url" id="tpl_consumer_url-wechat" <?php  if($wxapp['tpl_consumer_url'] == 'wechat' || !$wxapp['tpl_consumer_url']) { ?>checked<?php  } ?> required>
					<label for="tpl_consumer_url-wechat">跳转到H5页面</label>
				</div>
				<div class="help-block">此项仅对（公众号+小程序版）版本适用。<span class="text-danger">如果选择跳转到小程序，请确保小程序已经上线，否则将导致顾客收不到模板消息通知。</span></div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">小程序模板消息选择</label>
			<div class="col-sm-9 col-xs-12">
				<div class="radio radio-inline">
					<input type="radio" value="wxapp" name="wxapp_consumer_notice_channel" id="wxapp_consumer_notice_channel-wxapp" <?php  if($wxapp['wxapp_consumer_notice_channel'] == 'wxapp' || !$wxapp['wxapp_consumer_notice_channel']) { ?>checked<?php  } ?> required>
					<label for="wxapp_consumer_notice_channel-wxapp">优先使用小程序服务通知</label>
				</div>
				<div class="radio radio-inline">
					<input type="radio" value="wechat" name="wxapp_consumer_notice_channel" id="wxapp_consumer_notice_channel-wechat" <?php  if($wxapp['wxapp_consumer_notice_channel'] == 'wechat') { ?>checked<?php  } ?> required>
					<label for="wxapp_consumer_notice_channel-wechat">优先使用公众号模板消息</label>
				</div>
				<div class="help-block">
					此项设置顾客小程序下单,并使用微信支付后,使用微信模板消息通知还是小程序服务通知通知顾客。如果顾客小程序下单并选择'货到付款'和'余额支付',系统默认使用公众号模板消息通知顾客
					<span class="text-danger">
						注意：微信官方规定,小程序的服务通知仅在"微信支付"（每次支付，最多给粉丝可以发送3条服务通知）或者"提交表单"后才可以发送通知。如果您不想受此限制影响，推荐您使用'优先使用公众号模板消息'.
					</span>
					<br/>
					<div class="help-block">此项仅对（公众号+小程序版）版本适用</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">小程序AppId</label>
			<div class="col-sm-9 col-xs-12">
				<input type="text" name="key" class="form-control" value="<?php  echo $wxapp['key'];?>" placeholder="请输入key" required="true">
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">小程序AppSecret</label>
			<div class="col-sm-9 col-xs-12">
				<input type="text" name="secret" class="form-control" value="<?php  echo $wxapp['secret'];?>" placeholder="请输入Secret" required="true">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-9 col-xs-9 col-md-9">
				<input type="hidden" name="token" value="<?php  echo $_W['token'];?>">
				<input type="submit" value="提 交" class="btn btn-primary">
			</div>
		</div>
	</form>
</div>
<?php  include itemplate('public/footer', TEMPLATE_INCLUDEPATH);?>