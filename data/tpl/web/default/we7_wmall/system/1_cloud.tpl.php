<?php defined('IN_IA') or exit('Access Denied');?><?php  include itemplate('public/header', TEMPLATE_INCLUDEPATH);?>

<?php  if($op == 'auth') { ?>

<div class="page clearfix">

	<h2>授权管理</h2>

	<iframe src="<?php  echo $auth_url;?>" marginheight="0" marginwidth="0" frameborder="0" width="950px" style="height:500px; margin: 0 0px;" scrolling="no" allowTransparency="true"></iframe>

</div>

<?php  } ?>



<?php  if($op == 'upgrade') { ?>

<div class="page clearfix">

	<h2>系统更新</h2>

	<form class="form-horizontal form" id="form1" action="" method="post" enctype="multipart/form-data">

		<div class="alert alert-warning">

			更新时请注意备份网站数据和相关数据库文件！官方不强制要求用户跟随官方意愿进行更新尝试！

			<br>

			<strong class="text-danger">

				各位在更新前， 务必关闭安全狗， 云锁，防火墙等安全防护软件， 否则将更新不成功。因未关闭安全软件造成的更新失败， 官方不会针对每个客户单独处理。

			</strong>

		</div>

		<iframe src="<?php  echo $auth_url;?>" marginheight="0" marginwidth="0" frameborder="0" width="950px" style="height:750px; margin: 0px 0 0 0px;" scrolling="no" allowTransparency="true"></iframe>

</div>

<?php  } ?>

<?php  include itemplate('public/footer', TEMPLATE_INCLUDEPATH);?>

