<?php defined('IN_IA') or exit('Access Denied');?><div class="second-sidebar-title">配送员</div>
<div class="nav slimscroll">
	<?php  if(check_perm('deliveryer.plateform') || check_perm('deliveryer.getcash') || check_perm('deliveryer.current')) { ?>
		<div class="menu-header">平台</div>
		<ul class="menu-item">
			<?php  if(check_perm('deliveryer.plateform')) { ?>
				<li <?php  if($_W['_action'] == 'plateform') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('deliveryer/plateform/list');?>">配送员</a>
				</li>
			<?php  } ?>
			<li class="hide" <?php  if($_W['_action'] == 'location') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('deliveryer/location/list');?>">配送员位置</a>
			</li>
			<?php  if(check_perm('deliveryer.getcash')) { ?>
				<li <?php  if($_W['_action'] == 'getcash') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('deliveryer/getcash/list');?>">提现申请</a>
				</li>
			<?php  } ?>
			<?php  if(check_perm('deliveryer.current')) { ?>
				<li <?php  if($_W['_action'] == 'current') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('deliveryer/current/list');?>">账户明细</a>
				</li>
			<?php  } ?>
		</ul>
	<?php  } ?>
	<?php  if(check_perm('deliveryer.comment')) { ?>
		<div class="menu-header">评价</div>
		<ul class="menu-item">
			<li <?php  if($_W['_action'] == 'comment') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('deliveryer/comment/list');?>">配送评价</a>
			</li>
		</ul>
	<?php  } ?>
	<div class="menu-header">回收站</div>
	<ul class="menu-item">
		<li <?php  if($_W['_action'] == 'storage') { ?>class="active"<?php  } ?>>
			<a href="<?php  echo iurl('deliveryer/storage/list');?>">配送员回收站</a>
		</li>
	</ul>
	<?php  if(check_perm('deliveryer.cover')) { ?>
		<div class="menu-header">入口</div>
		<ul class="menu-item">
			<li <?php  if($_W['_action'] == 'cover') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('deliveryer/cover/list');?>">注册&登录</a>
			</li>
		</ul>
	<?php  } ?>
</div>
