<?php defined('IN_IA') or exit('Access Denied');?><div class="second-sidebar-title">
	数据
</div>
<div class="nav slimscroll">
	<?php  if(check_perm('statcenter.takeout') || check_perm('statcenter.paytype') || check_perm('statcenter.takeoutOrder') || check_perm('statcenter.takeoutOrderChannel')) { ?>
		<div class="menu-header">外卖</div>
		<ul class="menu-item">
			<?php  if(check_perm('statcenter.takeout')) { ?>
				<li <?php  if($_W['_action'] == 'takeout') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('statcenter/takeout');?>">外卖统计</a>
				</li>
			<?php  } ?>
			<?php  if(check_perm('statcenter.paytype')) { ?>
				<li <?php  if($_W['_action'] == 'paytype') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('statcenter/paytype');?>">支付方式统计</a>
				</li>
			<?php  } ?>
			<?php  if(check_perm('statcenter.takeoutOrder')) { ?>
				<li <?php  if($_W['_action'] == 'takeoutOrder') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('statcenter/takeoutOrder');?>">店铺订单统计</a>
				</li>
			<?php  } ?>
			<?php  if(check_perm('statcenter.takeoutOrderChannel')) { ?>
				<li <?php  if($_W['_action'] == 'takeoutOrderChannel') { ?>class="active"<?php  } ?>>
					<a href="<?php  echo iurl('statcenter/takeoutOrderChannel');?>">订单来源统计</a>
				</li>
			<?php  } ?>
			<?php  if($_W['is_agent']) { ?>
				<?php  if(check_perm('statcenter.takeoutAgent')) { ?>
					<li <?php  if($_W['_action'] == 'takeoutAgent') { ?>class="active"<?php  } ?>>
						<a href="<?php  echo iurl('statcenter/takeoutAgent');?>">代理订单统计</a>
					</li>
				<?php  } ?>
			<?php  } ?>
			<!-- <li <?php  if($_W['_action'] == 'box') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('statcenter/box');?>">餐盒费统计</a>
			</li> -->
		</ul>
	<?php  } ?>
	<?php  if(check_perm('statcenter.delivery')) { ?>
		<div class="menu-header">配送</div>
		<ul class="menu-item">
			<li <?php  if($_W['_op'] == 'index' && $_W['_action'] == 'delivery') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('statcenter/delivery/index');?>">配送统计</a>
			</li>
			<li <?php  if($_W['_op'] == 'day' && $_W['_action'] == 'delivery') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('statcenter/delivery/day');?>">配送详情</a>
			</li>
		</ul>
	<?php  } ?>
	<?php  if(check_perm('statcenter.hot')) { ?>
		<div class="menu-header">营业统计</div>
		<ul class="menu-item">
			<li <?php  if($_W['_action'] == 'hot') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('statcenter/hot')?>">热门商品</a>
			</li>
		</ul>
	<?php  } ?>
	<?php  if(check_perm('statcenter.finance')) { ?>
		<div class="menu-header">财务</div>
		<ul class="menu-item">
			<li <?php  if($_W['_action'] == 'finance') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('statcenter/finance');?>">财务统计</a>
			</li>
		</ul>
	<?php  } ?>

<!-- 	<div class="menu-header">门店账户核对</div>
	<ul class="menu-item">
		<li <?php  if($_W['_action'] == 'check') { ?>class="active"<?php  } ?>>
			<a href="<?php  echo iurl('statcenter/check');?>">账户核对</a>
		</li>
	</ul> -->

</div>
