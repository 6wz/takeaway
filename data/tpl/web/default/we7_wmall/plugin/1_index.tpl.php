<?php defined('IN_IA') or exit('Access Denied');?><?php  include itemplate('public/header', TEMPLATE_INCLUDEPATH);?>
<?php  if($op == 'index') { ?>
<div class="clearfix page-application">
	<?php  if($config_plugincenter['status'] == 1) { ?>
		<a href="<?php  echo iurl('plugin/plugincenter/buy', array(), true);?>">
			<img style="width: 100%; padding-bottom: 20px;" src="<?php echo WE7_WMALL_URL;?>/static/img/plugincenter_cover.png">
		</a>
	<?php  } ?>
	<?php  if(is_array($_W['plugin_types'])) { foreach($_W['plugin_types'] as $type) { ?>
		<?php  if(!empty($_W['plugins'][$type['name']])) { ?>
			<h2><?php  echo $type['title'];?></h2>
			<div class="application-list clearfix">
				<?php  if(is_array($_W['plugins'][$type['name']])) { foreach($_W['plugins'][$type['name']] as $plugin) { ?>
					<?php  if(check_perm($plugin['name'])) { ?>
						<?php  $url = $plugin['name'] . '/index/index'?>
						<div class="application-item clearfix">
							<a href="<?php  echo iurl($url);?>">
								<span class="application-image"><img src="<?php  echo tomedia($plugin['thumb']);?>" alt=""></span>
								<div class="application-info">
									<p class="application-name">
										<?php  echo $plugin['title'];?>
										<?php  if($plugin['is_overtime'] == 1) { ?>
											<span class="label label-danger">已到期</span>
										<?php  } ?>
									</p>
									<p class="application-description"><?php  echo $plugin['title'];?></p>
								</div>
							</a>
						</div>
					<?php  } ?>
				<?php  } } ?>
			</div>
		<?php  } ?>
	<?php  } } ?>
</div>
<?php  } ?>
<?php  if($op == 'perm') { ?>
<form action="./index.php" class="form-horizontal form-filter">
	<?php  echo tpl_form_filter_hidden('plugin/index/perm');?>
	<div class="form-group">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label">授权方式</label>
		<div class="col-sm-9 col-xs-12">
			<div class="btn-group">
				<div class="btn-group">
					<a href="<?php  echo ifilter_url('type:');?>" class="btn <?php  if(!$_GPC['type']) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">不限</a>
					<a href="<?php  echo ifilter_url('type:system');?>" class="btn <?php  if($_GPC['type'] == 'system') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">系统授权</a>
					<a href="<?php  echo ifilter_url('type:pay');?>" class="btn <?php  if($_GPC['type'] == 'pay') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">购买授权</a>
				</div>
			</div>
		</div>
	</div>
	<div class="form-group form-inline">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label">其他</label>
		<div class="col-sm-9 col-xs-12">
			<select name="pluginname" class="select2 form-control width-130">
				<option value="">选择插件</option>
				<?php  if(is_array($plugins)) { foreach($plugins as $plugin) { ?>
					<option value="<?php  echo $plugin['name'];?>" <?php  if($_GPC['pluginname'] == $plugin['name']) { ?>selected<?php  } ?>><?php  echo $plugin['title'];?></option>
				<?php  } } ?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
		<div class="col-sm-4 col-xs-4">
			<input type="submit" value="筛选" class="btn btn-primary">
		</div>
	</div>
</form>

<form action="" class="form-table form" method="post">
	<div class="panel panel-table">
		<div class="panel-body table-responsive js-table">
			<?php  if(empty($logs)) { ?>
			<div class="no-result">还没有相关数据</div>
			<?php  } else { ?>
			<table class="table table-hover">
				<thead class="navbar-inner">
				<tr>
					<th>授权插件</th>
					<th>授权时长</th>
					<th>开始时间 ~ 到期时间</th>
					<th>授权方式</th>
				</tr>
				</thead>
				<tbody>
				<?php  if(is_array($logs)) { foreach($logs as $log) { ?>
					<tr>
						<td><?php  echo $plugins[$log['pluginname']]['title'];?></td>
						<td>
							<?php  if($log['month'] == 0) { ?>
								<span class="label label-danger">永久</span>
							<?php  } else { ?>
								<span class="label label-success"><?php  echo $log['month'];?>个月</span>
							<?php  } ?>
							<?php  if($log['endtime'] <= time()) { ?>
								<span class="label label-danger">已到期</span>
							<?php  } ?>
						</td>
						<td>
							<?php  echo date('Y-m-d', $log['starttime'])?> ~
							<?php  if($log['month'] == 0) { ?>
								永久
							<?php  } else { ?>
								<?php  echo date('Y-m-d', $log['endtime'])?>
							<?php  } ?>
						</td>
						<td>
							<?php  if($log['type'] == 'system') { ?>
								<span class="label label-success">系统授权</span>
							<?php  } else { ?>
								<span class="label label-warning">购买授权</span>
							<?php  } ?>
						</td>
					</tr>
				<?php  } } ?>
				</tbody>
			</table>
			<div class="btn-region clearfix">
				<div class="pull-right">
					<?php  echo $pager;?>
				</div>
			</div>
			<?php  } ?>
		</div>
	</div>
</form>
<?php  } ?>
<?php  include itemplate('public/footer', TEMPLATE_INCLUDEPATH);?>