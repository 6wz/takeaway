<?php defined('IN_IA') or exit('Access Denied');?><?php  include itemplate('public/header', TEMPLATE_INCLUDEPATH);?>
<div class="clearfix">
	<div class="panel panel-stat">
		<div class="panel-heading">
			<h3>外卖订单概况</h3>
		</div>
		<div class="panel-body">
			<div class="col-md-3">
				<div class="title">待接单</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('order/takeout/list', array('status' => 1));?>"><?php  echo $stat['total_wait_handel'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">待配送</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('order/takeout/list', array('status' => 3));?>"><?php  echo $stat['total_wait_delivery'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">有催单</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('order/takeout/list', array('is_remind' => 1, 'filter_type' => 'is_remind'));?>"><?php  echo $stat['total_wait_reply'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">待退款</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('order/takeout/list', array('refund_status' => 1, 'filter_type' => 'refund_status'));?>"><?php  echo $stat['total_wait_refund'];?></a>
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-stat">
		<div class="panel-heading">
			<h3>商户概况</h3>
		</div>
		<div class="panel-body">
			<div class="col-md-3">
				<div class="title">全部商户</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('merchant/store/list');?>"><?php  echo $store['total_stores'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">营业中</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('merchant/store/list', array('is_rest' => 0));?>"><?php  echo $store['total_work_stores'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">打烊中</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('merchant/store/list', array('is_rest' => 1));?>"><?php  echo $store['total_rest_stores'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">回收站</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('merchant/storage/list');?>"><?php  echo $store['total_storage_stores'];?></a>
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-stat">
		<div class="panel-heading">
			<h3>配送员概况</h3>
		</div>
		<div class="panel-body">
			<div class="col-md-3">
				<div class="title">全部配送员</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('deliveryer/plateform/list');?>"><?php  echo $deliveryer['total_deliveryer'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">接单中</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('deliveryer/plateform/list', array('work_status' => 1));?>"><?php  echo $deliveryer['total_work_deliveryer'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">休息中</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('deliveryer/plateform/list', array('work_status' => 0));?>"><?php  echo $deliveryer['total_rest_deliveryer'];?></a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="title">回收站</div>
				<div class="num-wrapper">
					<a class="num" href="<?php  echo iurl('deliveryer/storage/list');?>"><?php  echo $deliveryer['total_storage_deliveryer'];?></a>
				</div>
			</div>
		</div>
	</div>
</div>
<?php  include itemplate('public/footer', TEMPLATE_INCLUDEPATH);?>
