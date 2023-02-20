<?php defined('IN_IA') or exit('Access Denied');?><div class="second-sidebar-title">
	买单
</div>
<div class="nav slimscroll">
	<?php  if(check_perm('paycenter.paybill')) { ?>
		<div class="menu-header">买单</div>
		<ul class="menu-item">
			<li>
				<a href="<?php  echo iurl('paycenter/paybill/index')?>">所有订单</a>
			</li>
		</ul>
	<?php  } ?>
</div>