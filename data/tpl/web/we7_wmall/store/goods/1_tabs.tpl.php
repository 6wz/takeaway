<?php defined('IN_IA') or exit('Access Denied');?><div class="second-sidebar-title">
	商品管理
</div>
<div class="nav slimscroll">
	<div class="menu-header">商品管理</div>
	<ul class="menu-item">
		<li <?php  if($_W['_op'] == 'index' && $_W['_ta'] != 'export' && $_W['_ta'] != 'eleme_category') { ?>class="active"<?php  } ?>>
		<a href="<?php  echo iurl('store/goods/index/list');?>">商品列表</a>
		</li>
		<li <?php  if($_W['_op'] == 'index' && $_W['_ta'] == 'export') { ?>class="active"<?php  } ?>>
		<a href="<?php  echo iurl('store/goods/index/export');?>">批量导入</a>
		</li>
		<?php  if(check_plugin_perm('eleme') && get_plugin_config('eleme.status') && $_W['store']['eleme_status']) { ?>
			<li <?php  if($_W['_op'] == 'index' && $_W['_ta'] == 'eleme_category') { ?>class="active"<?php  } ?>>
			<a href="<?php  echo iurl('store/goods/index/eleme_category');?>">从饿了么导入</a>
			</li>
		<?php  } ?>
		<?php  if(check_plugin_perm('meituan') && get_plugin_config('meituan.status') && $_W['store']['meituan_status']) { ?>
			<li <?php  if($_W['_op'] == 'index' && $_W['_ta'] == 'meituan_category') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('store/goods/index/meituan_category');?>">从美团导入</a>
			</li>
		<?php  } ?>
		<?php  if(check_plugin_perm('lewaimai')) { ?>
			<li <?php  if($_W['_op'] == 'index' && $_W['_ta'] == 'lewaimai') { ?>class="active"<?php  } ?>>
				<a href="<?php  echo iurl('store/goods/index/lewaimai');?>">从乐外卖导入</a>
			</li>
		<?php  } ?>
	</ul>
	<div class="menu-header">分类管理</div>
	<ul class="menu-item">
		<li <?php  if($_W['_op'] == 'category' && $_W['_ta'] != 'export') { ?>class="active"<?php  } ?>>
		<a href="<?php  echo iurl('store/goods/category/list');?>">分类列表</a>
		</li>
		<li <?php  if($_W['_op'] == 'category' && $_W['_ta'] == 'export') { ?>class="active"<?php  } ?>>
		<a href="<?php  echo iurl('store/goods/category/export');?>">批量导入</a>
		</li>
	</ul>
</div>
