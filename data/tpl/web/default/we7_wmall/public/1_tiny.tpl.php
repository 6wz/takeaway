<?php defined('IN_IA') or exit('Access Denied');?><script type="text/html" id="select-fans-containter">
	<div class="modal fade" id="select-fans-modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">选择粉丝</h4>
				</div>
				<form class="form-horizontal form" id="form-first-order" action="" method="post">
					<div class="modal-body">
						<?php  if(MODULE_FAMILY == 'wxapp') { ?>
							<div class="alert alert-warning" style="font-size: 18px">
								您当前使用的是小程序版！<br>
								<span class="text-danger" style="font-size: 22px">如果您有,我们强烈建议您：先绑定（因为发送模版消息没有限制）</span><br>
								如果待添加的粉丝未关注, 需要先关注,否则会造成无法发送模板消息的问题<br>
								如果未搜索到粉丝,你可以<a href="javascript:;" onclick="$('#follow-qrcode').toggle()">"点我扫码绑定粉丝"</a>来进行粉丝绑定，绑定成功后，然后再搜索添加
								<br/>
								<div class="text-center" style="display: none" id="follow-qrcode">
									<div class="qrcode-block js-qrcode" data-text="<?php  echo imurl('system/common/oauth', array(), true);?>"></div>
								</div>
								<span class="text-danger" style="font-size: 22px">如果您没有:</span><br>
								如果您没有搜索到待添加的粉丝,你需要让待添加的粉丝先进入外卖小程序首页,然后再搜索添加<br>
							</div>
						<?php  } else { ?>
							<div class="alert alert-warning" style="font-size: 18px">
								如果待添加的粉丝未关注, 需要先关注,否则会造成无法发送模板消息的问题<br>
								如果未搜索到粉丝,你可以<a href="javascript:;" onclick="$('#follow-qrcode').toggle()">"扫码绑定粉丝"</a>来进行粉丝绑定，绑定成功后，然后再搜索添加
							</div>
							<div class="text-center" id="follow-qrcode">
								<div class="qrcode-block js-qrcode" data-text="<?php  echo imurl('system/common/oauth', array(), true);?>"></div>
							</div>
						<?php  } ?>
						<div class="form-group" style="margin: 15px 0;">
							<div class="input-group">
								<input class="form-control" name="keyword" id="keyword" type="text" placeholder="输入粉丝昵称/姓名/手机号/顾客uid进行搜索"/>
								<div class="input-group-btn">
									<a class="btn btn-primary" href="javascript:;" id="search"><i class="fa fa-search"></i> 搜索</a>
								</div>
							</div>
						</div>
						<table class="table table-hover table-bordered text-center">
							<thead>
							<tr>
								<th class="text-center">头像</th>
								<th class="text-center">昵称</th>
								<th class="text-center">姓名</th>
								<th class="text-center">手机号</th>
								<th class="text-center">性别</th>
								<th class="text-center">操作</th>
							</tr>
							</thead>
							<tbody class="content">
							<tr>
								<td colspan="6">
									<h4><i class="fa fa-info-circle"></i> <span id="info">输入粉丝昵称或姓名或粉丝编号进行搜索</span></h4>
									<div class="text-center" style="display: none;" id="follow-qrcode">
										<div class="qrcode-block js-qrcode" data-text="<?php  echo imurl('system/common/oauth', array(), true);?>"></div>
									</div>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</script>
<script type="text/html" id="select-fans-data">
	<{# for(var i = 0, len = d.length; i < len; i++){ }>
	<tr>
		<td>
			<strong><{d[i].id}></strong>
			<img src="<{d[i].avatar}>" width="50" alt=""/>
		</td>
		<td><{d[i].nickname}></td>
		<td><{d[i].realname}></td>
		<td><{d[i].mobile}></td>
		<td><{d[i].sex}></td>
		<td><a href="javascript:;" class="btn btn-primary" data-id="<{d[i].id}>">选择</a></td>
	</tr>
	<{# } }>
</script>
<script type="text/html" id="select-store-containter">
	<div class="modal fade" id="select-store-modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">选择商家</h4>
				</div>
				<form class="form-horizontal form" id="form-first-order" action="" method="post">
					<div class="modal-body">
						<div class="form-group" style="margin: 0; margin-bottom: 20px">
							<div class="input-group">
								<input class="form-control" name="keyword" id="keyword" type="text" placeholder="输入商家名称进行搜索"/>
								<div class="input-group-btn">
									<a class="btn btn-primary" href="javascript:;" id="search"><i class="fa fa-search"></i> 搜索</a>
								</div>
							</div>
						</div>
						<table class="table table-hover table-bordered text-center">
							<thead>
							<tr>
								<th class="text-center"></th>
								<th class="text-center">名称</th>
								<th class="text-center">入驻时间</th>
								<th class="text-center">操作</th>
							</tr>
							</thead>
							<tbody class="content">
							<tr>
								<td colspan="4">
									<h4><i class="fa fa-info-circle"></i> <span id="info">输入商家名称进行搜索</span></h4>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</form>
				<div class="modal-footer hide">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary btn-submit">确定</button>
				</div>
			</div>
		</div>
	</div>
</script>
<script type="text/html" id="select-store-data">
	<{# for(var i = 0, len = d.length; i < len; i++){ }>
	<tr>
		<td><img src="<{d[i].logo}>" width="50" alt=""/></td>
		<td><{d[i].title}></td>
		<td><{d[i].addtime}></td>
		<td><a href="javascript:;" class="btn btn-default btn-item" data-id="<{d[i].id}>">选择</a></td>
	</tr>
	<{# } }>
</script>
<script type="text/html" id="select-goods-containter">
	<div class="modal fade" id="select-goods-modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">选择商品</h4>
				</div>
				<form class="form-horizontal form" id="form-first-order" action="" method="post">
					<div class="modal-body">
						<div class="form-group" style="margin: 0; margin-bottom: 20px">
							<div class="input-group">
								<input class="form-control" name="keyword" id="keyword" type="text" placeholder="输入商品名称进行搜索"/>
								<div class="input-group-btn">
									<a class="btn btn-primary" href="javascript:;" id="search"><i class="fa fa-search"></i> 搜索</a>
								</div>
							</div>
						</div>
						<table class="table table-hover table-bordered text-center">
							<thead>
							<tr>
								<th class="text-center"></th>
								<th class="text-center">名称</th>
								<th class="text-center">价格</th>
								<th class="text-center">库存</th>
								<th class="text-center">操作</th>
							</tr>
							</thead>
							<tbody class="content">
							<tr>
								<td colspan="5">
									<h4><i class="fa fa-info-circle"></i> <span id="info">输入商品名称进行搜索</span></h4>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</form>
				<div class="modal-footer hide">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary btn-submit">确定</button>
				</div>
			</div>
		</div>
	</div>
</script>
<script type="text/html" id="select-goods-data">
	<{# for(var i = 0, len = d.length; i < len; i++){ }>
	<tr>
		<td><img src="<{d[i].thumb}>" width="50" alt=""/></td>
		<td><{d[i].title}></td>
		<td><{d[i].price}></td>
		<td><{d[i].total}></td>
		<td><a href="javascript:;" class="btn btn-default btn-item" data-id="<{d[i].id}>">选择</a></td>
	</tr>
	<{# } }>
</script>

<script type="text/html" id="select-account-containter">
	<div class="modal fade" id="select-account-modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog ">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">选择</h4>
				</div>
				<form class="form-horizontal form" id="form-first-order" action="" method="post">
					<div class="modal-body">
						<div class="form-group" style="margin: 0; margin-bottom: 20px">
							<div class="input-group">
								<input class="form-control" name="keyword" id="keyword" type="text" placeholder="输入名称进行搜索"/>
								<div class="input-group-btn">
									<a class="btn btn-primary" href="javascript:;" id="search"><i class="fa fa-search"></i> 搜索</a>
								</div>
							</div>
						</div>
						<table class="table table-hover table-bordered text-center">
							<thead>
							<tr>
								<th class="text-center"></th>
								<th class="text-center">uniacid</th>
								<th class="text-center">操作</th>
							</tr>
							</thead>
							<tbody class="content">
							<tr>
								<td colspan="4">
									<h4><i class="fa fa-info-circle"></i> <span id="info">输入公众号名称进行搜索</span></h4>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</script>
<script type="text/html" id="select-account-data">
	<{# for(var i = 0, len = d.length; i < len; i++){ }>
	<tr>
		<td><{d[i].name}></td>
		<td><{d[i].uniacid}></td>
		<td><a href="javascript:;" class="btn btn-primary" data-uniacid="<{d[i].uniacid}>">选择</a></td>
	</tr>
	<{# } }>
</script>
