<?php defined('IN_IA') or exit('Access Denied');?><?php  include itemplate('public/header', TEMPLATE_INCLUDEPATH);?>
<form action="./index.php" class="form-horizontal form-filter">
	<input type="hidden" name="c" value="site">
	<input type="hidden" name="a" value="entry">
	<input type="hidden" name="m" value="we7_wmall">
	<input type="hidden" name="do" value="web"/>
	<input type="hidden" name="ctrl" value="merchant"/>
	<input type="hidden" name="ac" value="store"/>
	<input type="hidden" name="op" value="list"/>
	<div class="form-group">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label">标签</label>
		<div class="col-sm-9 col-xs-12">
			<div class="btn-group">
				<a href="<?php  echo ifilter_url('label:0');?>" class="btn <?php  if($label == 0) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">不限</a>
				<?php  if(is_array($store_label)) { foreach($store_label as $row_label) { ?>
					<a href="<?php  echo ifilter_url('label:' . $row_label['id']);?>" class="btn <?php  if($label == $row_label['id']) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>"><?php  echo $row_label['title'];?></a>
				<?php  } } ?>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label">营业状态</label>
		<div class="col-sm-9 col-xs-12">
			<div class="btn-group">
				<div class="btn-group">
					<a href="<?php  echo ifilter_url('is_rest: -1');?>" class="btn <?php  if($is_rest == -1) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">不限</a>
					<a href="<?php  echo ifilter_url('is_rest: 0');?>" class="btn <?php  if($is_rest == '0') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">营业中</a>
					<a href="<?php  echo ifilter_url('is_rest: 1');?>" class="btn <?php  if($is_rest == '1') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">打烊中</a>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group form-inline">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label">其他</label>
		<div class="col-sm-9 col-xs-12">
			<?php  if($_W['is_agent']) { ?>
				<select name="agentid" class="select2 js-select2 form-control width-130">
					<option value="0">选择代理区域</option>
					<?php  if(is_array($_W['agents'])) { foreach($_W['agents'] as $agent) { ?>
						<option value="<?php  echo $agent['id'];?>" <?php  if($agentid == $agent['id']) { ?>selected<?php  } ?>><?php  echo $agent['area'];?></option>
					<?php  } } ?>
				</select>
			<?php  } ?>
			<select class="form-control" id="cid" name="cid">
				<option value="0">所有分类</option>
				<?php  if(is_array($categorys)) { foreach($categorys as $category) { ?>
					<option value="<?php  echo $category['id'];?>" <?php  if($cid == $category['id']) { ?>selected<?php  } ?>><?php  echo $category['title'];?></option>
				<?php  } } ?>
			</select>
			<input type="text" name="keyword" value="<?php  echo $_GPC['keyword'];?>" class="form-control" placeholder="门店名称/门店id"/>
		</div>
	</div>
	<div class="form-group">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
		<div class="col-sm-9 col-xs-12">
			<button class="btn btn-primary">筛选</button>
		</div>
	</div>
</form>
<form class="form-table " action="" method="post">
	<div class="panel panel-table">
		<div class="panel-heading clearfix">
			<a href="<?php  echo iurl('merchant/store/post');?>" class="btn btn-primary btn-sm">添加门店</a>
		</div>
		<div class="panel-body table-responsive js-table">
			<table class="table table-hover">
				<thead>
				<tr>
					<th>
						<div class="checkbox checkbox-inline">
							<input type="checkbox" name="id[]"/>
							<label></label>
						</div>
					</th>
					<th>门店logo</th>
					<th>门店名称</th>
					<?php  if($_W['is_agent']) { ?>
						<th>所属城市</th>
					<?php  } ?>
					<th>标签</th>
					<th>
						营业状态<br>
						是否显示
					</th>
					<th>
						是否推荐<br>
						是否置顶
					</th>
					<th width="80">
						销量<br>
						热度<br>
						排序
					</th>
					<?php  if(check_plugin_perm('gohome')) { ?>
					<th style="text-align: center">是否开启好店</th>
					<?php  } ?>
					<th style="width:480px; text-align:right;">操作</th>
				</tr>
				</thead>
				<tbody>
				<?php  if(is_array($lists)) { foreach($lists as $item) { ?>
					<input type="hidden" name="ids[]" value="<?php  echo $item['id'];?>">
					<tr>
						<td>
							<div class="checkbox checkbox-inline">
							<input type="checkbox" name="id[]" value="<?php  echo $item['id'];?>"/>
							<label></label>
						</div>
						</td>
						<td><img src="<?php  echo tomedia($item['logo']);?>" width="50"></td>
						<td><?php  echo $item['title'];?></td>
						<?php  if($_W['is_agent']) { ?>
							<td><?php  echo toagent($item['agentid'])?></td>
						<?php  } ?>
						<td>
							<span class="label" style="background-color:<?php  echo $store_label[$item['label']]['color'];?>"><?php  echo $store_label[$item['label']]['title'];?></span>
						</td>
						<td>
							<input type="checkbox" class="js-checkbox" data-on-text="营业" data-off-text="休息" data-href="<?php  echo iurl('merchant/store/is_in_business', array('id' => $item['id']));?>" data-name="is_in_business" value="1" <?php  if($item['is_in_business'] == 1) { ?>checked<?php  } ?>>
							<div style="margin-top: 10px;">
								<input type="checkbox" class="js-checkbox" data-on-text="显示" data-off-text="隐藏" data-href="<?php  echo iurl('merchant/store/status', array('id' => $item['id']));?>" data-name="status" value="1" <?php  if($item['status'] == 1) { ?>checked<?php  } ?>>
							</div>
						</td>
						<td>
							<input type="checkbox" class="js-checkbox" data-on-text="推荐" data-off-text="不推荐" data-href="<?php  echo iurl('merchant/store/is_recommend', array('id' => $item['id']));?>" data-name="is_recommend" value="1" <?php  if($item['is_recommend'] == 1) { ?>checked<?php  } ?>>
							<div style="margin-top: 10px;">
								<input type="checkbox" class="js-checkbox" data-on-text="置顶" data-off-text="不置顶" data-href="<?php  echo iurl('merchant/store/is_stick', array('id' => $item['id']));?>" data-name="is_stick" value="1" <?php  if($item['is_stick'] == 1) { ?>checked<?php  } ?>>
							</div>
						</td>

						<td>
							<input type="text" name="sailed[]" value="<?php  echo $item['sailed'];?>" class="form-control"/>
							<input type="text" name="click[]" value="<?php  echo $item['click'];?>" class="form-control" style="margin: 10px 0;"/>
							<input type="text" name="displayorder[]" value="<?php  echo $item['displayorder'];?>" class="form-control"/>
						</td>
						<?php  if(check_plugin_perm('gohome')) { ?>
						<th style="text-align: center">
							<input type="checkbox" class="js-checkbox" data-on-text="开启" data-off-text="关闭" data-href="<?php  echo iurl('merchant/store/is_haodian', array('id' => $item['id']));?>" data-name="is_haodian" value="1" <?php  if($item['is_haodian'] == 1) { ?>checked<?php  } ?>>
						</th>
						<?php  } ?>
						<td style="text-align:right; overflow: inherit">
							<a href="<?php  echo iurl('merchant/store/copy', array('sid' => $item['id']))?>" class="btn btn-default btn-sm  js-post" data-confirm="确定复制该门店吗?">复制</a>
							<a href="javascript:;" class="btn btn-default btn-sm js-clip hide" data-url="<?php  echo $item['sys_url'];?>"><i class="fa fa-link"></i></a>
							<a href="javascript:;" class="btn btn-default btn-sm show-qrcode" data-wx-url="<?php  echo $item['wechat_url'];?>" data-vue-url="<?php  echo $item['vue_url'];?>" data-id="<?php  echo $item['id'];?>"><i class="fa fa-qrcode"> </i></a>
							<div class="btn-group">
								<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">标签 <span class="caret"></span></button>
								<ul class="dropdown-menu" style="z-index: 10000">
									<?php  if(is_array($store_label)) { foreach($store_label as $row_label) { ?>
										<?php  if($row_label['alias'] != 'new') { ?>
											<li><a href="<?php  echo iurl('merchant/store/label', array('sid' => $item['id'], 'label' => $row_label['id']))?>" class="btn-label js-post" data-confirm="确定给该商户打标签吗" data-alias="<?php  echo $row_label['alias'];?>"><?php  echo $row_label['title'];?></a></li>
										<?php  } ?>
									<?php  } } ?>
									<li role="presentation" class="divider"></li>
									<li><a href="<?php  echo iurl('merchant/store/label_del', array('id' => $item['id']))?>" class="js-remove" data-confirm=确定删除吗?">删除标签</a></li>
									<li><a href="<?php  echo iurl('merchant/store/storage', array('id' => $item['id']))?>" class="js-remove" data-confirm="门店将放入回收站，确定删除吗?">删除门店</a></li>
								</ul>
							</div>
							<a href="<?php  echo iurl('store/dashboard/index', array('_sid' => $item['id']))?>" target="_blank" class="btn btn-default btn-sm" style="color:#D9534F;"><i class="fa fa-cog fa-spin"> </i> 管理</a>
						</td>
					</tr>
				<?php  } } ?>
				</tbody>
			</table>
			<?php  if(!empty($lists)) { ?>
				<div class="btn-region clearfix">
					<div class="pull-left">
						<input name="token" type="hidden" value="<?php  echo $_W['token'];?>" />
						<input type="submit" class="btn btn-primary btn-sm pull-left" name="submit" value="提交修改" />
						<div class="dropup pull-left">
							<button class="btn btn-default btn-sm dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
								显示/隐藏/营业/打烊
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1" style="padding: 10px 0;">
								<li><a href="<?php  echo iurl('merchant/store/batch', array('type' => 'is_in_business', 'value' => 1))?>" class="js-post" data-confirm="确定所有店铺营业吗?">一键所有店铺营业</a></li>
								<li><a href="<?php  echo iurl('merchant/store/batch', array('type' => 'is_in_business', 'value' => 0))?>" class="js-post" data-confirm="确定所有店铺休息吗?">一键所有店铺休息</a></li>
								<li><a href="<?php  echo iurl('merchant/store/batch', array('type' => 'status', 'value' => 1))?>" class="js-post" data-confirm="确定显示所有店铺吗?">一键显示所有店铺</a></li>
								<li><a href="<?php  echo iurl('merchant/store/batch', array('type' => 'status', 'value' => 0))?>" class="js-post" data-confirm="确定隐藏所有店铺吗?">一键隐藏所有店铺</a></li>
							</ul>
						</div>
						<a href="<?php  echo iurl('merchant/store/lots')?>" class="btn btn-default btn-sm js-batch" data-batch="modal">批量操作(评论/自动接单)</a>
						<a href="<?php  echo iurl('merchant/store/sailed')?>" class="btn btn-default btn-sm js-post" data-confirm="同步后,商户的销量将更新为商户近30天的订单成交数。注意：此操作针对所有商户">同步商户销量</a>
						<a href="<?php  echo iurl('merchant/store/business')?>" class="btn btn-default btn-sm js-post" data-confirm="某些时候,店铺已经到了营业时间，但是手机端显示休息中，您可以使用此功能进行修复">营业时间修复</a>
						<a href="<?php  echo iurl('merchant/store/delivery_time')?>" class="btn btn-default btn-sm js-post" data-confirm="此操作针对商户的预计送达时间计算方式为'平台根据门店近30天的配送时间计算得出'的商户<br>同步后,商户的预计送达时间将更新为商户近30天的平均配送时间">同步商户预计送达时间</a>
					</div>
					<div class="pull-right">
						<?php  echo $pager;?>
					</div>
				</div>
			<?php  } ?>
		</div>
	</div>
</form>

<div class="modal fade" id="qrcode-modal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title">门店二维码&访问地址</h3>
			</div>
			<div class="modal-body">
				<p>微信链接: <a href="javascript:;" class="wx-url"></a></p>
				<p>系统连接: <a href="javascript:;" class="vue-url"></a></p>
				<div class="panel panel-default table-qrcode">
					<span id="wx-qrcode"></span>
				</div>
				<div class="panel panel-default table-qrcode">
					<span id="vue-qrcode" class="pull-right"></span>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
require(['jquery.qrcode'], function(){
	$('.show-qrcode').click(function(){
		$('#qrcode-modal .wx-url').html($(this).data('wx-url'));
		$('#qrcode-modal .vue-url').html($(this).data('vue-url'));
		var option = {
			render: 'canvas',
			width: 200,
			height: 200,
			colorDark : "#000000",
			colorLight : "#ffffff"
		}
		var vue_url = $(this).data('vue-url');
		option.text = vue_url;
		$('#vue-qrcode').html('');
		$('#vue-qrcode').qrcode(option);
		var wx_url = $(this).data('wx-url');
		if(wx_url) {
			option.text = wx_url;
			$('#wx-qrcode').html('');
			$('#wx-qrcode').qrcode(option);
			var sid = $(this).data('id');
			var url = "<?php  echo iurl('store/common/qrcode/build', array('type' => 'store'));?>" + "&_sid=" + sid;
			var html = '<div class="panel-body clearfix" style="text-align: center;padding-bottom: 0px;"><a href="'+url+'" data-confirm="重新生成二维码吗?" class="btn btn-default js-post">重新生成二维码</a></div>';
			$('#wx-qrcode').append(html);
		} else {
			var sid = $(this).data('id');
			var url = "<?php  echo iurl('store/common/qrcode/build', array('type' => 'store'));?>" + "&_sid=" + sid;
			var html = '<span><a href="'+url+'" data-confirm="确定生成二维码吗?" class="btn btn-primary js-post">生成微信二维码</a></span>';
			$('#wx-qrcode').html(html);
		}
		$('#qrcode-modal').modal('show');
	});
});
</script>
<?php  include itemplate('public/footer', TEMPLATE_INCLUDEPATH);?>