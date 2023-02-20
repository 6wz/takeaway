<?php defined('IN_IA') or exit('Access Denied');?><?php  include itemplate('public/header', TEMPLATE_INCLUDEPATH);?>
<div class="page clearfix">
	<form class="form-horizontal form form-validate" id="form1" action="" method="post" enctype="multipart/form-data">
		<div class="alert alert-warning">添加门店时,只填写基本信息。添加成功后,会自动跳转到完善门店信息页面</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">门店名称</label>
			<div class="col-sm-9 col-xs-12">
				<input type="text" class="form-control" name="title" value="<?php  echo $item['title'];?>" required="true">
			</div>
		</div>
		<?php  if($config_mall['store_use_child_category'] == 1) { ?>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label">主营品类</label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo tpl_form_field_tiny_category_2level('category1', $categorys['parent'], $categorys['child'], $item['cate_parentid1'], $item['cate_childid1'])?>
					<div class="help-block"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label">辅营品类</label>
				<div class="col-sm-9 col-xs-12">
					<?php  echo tpl_form_field_tiny_category_2level('category2', $categorys['parent'], $categorys['child'], $item['cate_parentid2'], $item['cate_childid2'])?>
					<div class="help-block"></div>
				</div>
			</div>
		<?php  } else { ?>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label">主营品类</label>
				<div class="col-sm-9 col-xs-12">
					<select name="category1[parentid]" class="form-control">
						<?php  if(is_array($categorys)) { foreach($categorys as $category) { ?>
							<option value="<?php  echo $category['id'];?>" <?php  if($item['cate_parentid1'] == $category['id']) { ?>selected<?php  } ?>><?php  echo $category['title'];?></option>
						<?php  } } ?>
					</select>
					<div class="help-block"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-12 col-sm-3 col-md-2 control-label">辅营品类</label>
				<div class="col-sm-9 col-xs-12">
					<select name="category2[parentid]" class="form-control">
						<?php  if(is_array($categorys)) { foreach($categorys as $category) { ?>
							<option value="<?php  echo $category['id'];?>" <?php  if($item['cate_parentid2'] == $category['id']) { ?>selected<?php  } ?>><?php  echo $category['title'];?></option>
						<?php  } } ?>
					</select>
					<div class="help-block"></div>
				</div>
			</div>
		<?php  } ?>
		<!--<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">所属分类</label>
			<div class="col-sm-9 col-xs-12">
				<?php  if(is_array($categorys)) { foreach($categorys as $category) { ?>
					<?php  if($category['is_sys'] == 1) { ?>
					<div class="checkbox checkbox-inline">
						<input type="checkbox" name="cid[]" id="cid-<?php  echo $category['id'];?>" value="<?php  echo $category['id'];?>" required="true">
						<label for="cid-<?php  echo $category['id'];?>"><?php  echo $category['title'];?></label>
					</div>
					<?php  } ?>
				<?php  } } ?>
				<span class="help-block">选择门店分类，可多选.<a href="<?php  echo iurl('dashboard/nav');?>" target="_blank">创建商户分类</a></span>
			</div>
		</div>-->
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">门店LOGO</label>
			<div class="col-sm-9 col-xs-12">
				<?php  echo tpl_form_field_image('logo', $item['logo']);?>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">门店描述</label>
			<div class="col-sm-9 col-xs-12">
				<input type="text" class="form-control" name="content" value="<?php  echo $item['content'];?>" required="true">
				<div class="help-block">粉丝分享时调用.</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">门店电话</label>
			<div class="col-sm-9 col-xs-12">
				<input type="text" class="form-control" name="telephone" value="<?php  echo $item['telephone'];?>" required="true">
			</div>
		</div>
		<div class="form-group <?php  if($_W['role'] == 'operator') { ?>hide<?php  } ?>">
			<label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
			<div class="col-sm-9 col-xs-9 col-md-9">
				<input type="text" class="form-control" name="displayorder" value="<?php  echo $item['displayorder'];?>">
				<div class="help-block">数字越大，越靠前</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-9 col-xs-9 col-md-9">
				<input type="hidden" name="token" value="<?php  echo $_W['token'];?>">
				<input type="submit" value="提交" class="btn btn-primary">
			</div>
		</div>
	</form>
</div>

<script id="tpl-delivery-time" type="text/html">
	<{# for(var i = 0, len = d.length; i < len; i++){ }>
	<div class="col-sm-6">
		<div class="input-group">
			<span class="input-group-addon"><{d[i].start}> ~ <{d[i].end}></span>
			<span class="input-group-addon">附加费</span>
			<input type="text" class="form-control" name="times[fee][]" value="<{d[i].fee}>" placeholder="增加附加费">
			<input type="hidden" name="times[start][]" value="<{d[i].start}>"/>
			<input type="hidden" name="times[end][]" value="<{d[i].end}>"/>
			<input type="hidden" name="times[status][]" value="1">
			<span class="input-group-addon">元</span>
			<div class="input-group-btn">
				<a href="javascript:;" class="btn btn-success btn-delivery-time-item">使用中</a>
			</div>
		</div>
	</div>
	<{# } }>
</script>
<script type="text/javascript">
require(['clockpicker'], function($){
	$('.clockpicker :text').clockpicker({autoclose: true});

	$('#selectImage').click(function(){
		util.uploadMultiPictures(function(images){
			var s = '';
			$.each(images, function(){
				s += '<div class="col-lg-4">'+
						'	<input type="hidden" name="thumbs[image][]" value="'+this.filename+'">' +
						'	<div class="panel panel-default panel-slide">'+
						'		<div class="btnClose" onclick="$(this).parent().parent().remove()"><i class="fa fa-times"></i></div>' +
						'		<div class="panel-body">'+
						'			<img src="'+this.url+'" width="100%" height="170">'+
						'			<div>'+
						'				<input class="form-control last pull-right" placeholder="跳转链接" name="thumbs[url][]">'+
						'			</div>'+
						'		</div>'+
						'	</div>'+
						'</div>'
			});
			$('#slideContainer').append(s);
		});
	});

	$('#hour-add').click(function(){
		var hour_length = $('#hour .hour-item').length;
		if(hour_length < 3) {
			var html = '<div class="form-group hour-item clockpicker">' +
					'<label class="col-xs-12 col-sm-3 col-md-2 control-label">营业时间</label>'+
					'<div class="col-sm-9 col-xs-4 col-md-3">'+
					'<div class="input-group">'+
					'<input type="text" readonly name="business_start_hours[]" class="form-control" placeholder=""> '+
					'<span class="input-group-addon">至</span>'+
					'<input type="text" readonly name="business_end_hours[]" class="form-control" placeholder=""> '+
					'</div>'+
					'</div>'+
					'<div class="col-sm-9 col-xs-4 col-md-3" style="padding-top:6px">'+
					'<a href="javascript:;" onclick="$(this).parent().parent().remove()"><i class="fa fa-times-circle" title="删除时间段"> </i></a>'+
					'</div>'+
					'</div>';
			$('#hour').append(html);
			$('.clockpicker :text').clockpicker({autoclose: true});
		} else {
			util.message('最多可添加3个时间段', '', 'error');
			return false;
		}
	});

	$('.remind-reply-add').click(function(){
		var html ='	<div class="form-group item">'+
				'	<label class="col-xs-12 col-sm-3 col-md-2 control-label">自定义催单回复</label>'+
				'	<div class="col-sm-6">'+
				'		<input type="text" class="form-control" name="remind_reply[]" value="">'+
				'	</div>'+
				'	<div class="col-sm-1" style="margin-top:5px">'+
				'		<a href="javascript:;" class="remind-reply-del"><i class="fa fa-times-circle"></i> </a>'+
				'	</div>'+
				'</div>';
		if($('#remind-reply .item').size() >= 15) {
			util.message('最多可添加15个自定义催单回复', '', 'error');
			return false;
		}
		$('#remind-reply').append(html);
	});

	$('.comment-reply-add').click(function(){
		var html ='	<div class="form-group item">'+
				'	<label class="col-xs-12 col-sm-3 col-md-2 control-label">自定义评价回复</label>'+
				'	<div class="col-sm-6">'+
				'		<textarea class="form-control" name="comment_reply[]"></textarea>'+
				'	</div>'+
				'	<div class="col-sm-1" style="margin-top:5px">'+
				'		<a href="javascript:;" class="comment-reply-del"><i class="fa fa-times-circle"></i> </a>'+
				'	</div>'+
				'</div>';
		if($('#comment-reply .item').size() >= 15) {
			util.message('最多可添加15个自定义评价回复', '', 'error');
			return false;
		}
		$('#comment-reply').append(html);
	});

	$('#times-add').click(function(){
		var html ='	<div class="input-group clockpicker" style="margin-bottom: 15px">'+
				'		<input type="hidden" class="form-control" name="ids[]" value="">'+
				'		<input type="text" class="form-control" name="starttime[]" value="">'+
				'		<span class="input-group-addon">至</span>'+
				'	<input type="text" class="form-control" name="endtime[]" value="">'+
				'			<span class="input-group-addon"> <a href="javascript:;" class="times-del"><i class="fa fa-times"></i></a></span>'+
				'	</div>';
		$('#times-container').append(html);
		$('.clockpicker :text').clockpicker({autoclose: true});
	});

	$('#custom-url-add').click(function(){
		var html = '<div class="form-group item">'+
					'	<label class="col-xs-12 col-sm-3 col-md-2 control-label">门店详情页自定义链接</label>'+
					'		<div class="col-sm-6">'+
					'			<div class="input-group">'+
					'				<span class="input-group-addon">链接文字</span>'+
					'				<input type="text" class="form-control" name="custom_title[]" value="">'+
					'				<span class="input-group-addon">链接地址</span>'+
					'				<input type="text" class="form-control" name="custom_link[]" value="">'+
					'			</div>'+
					'		</div>'+
					'	<div class="col-sm-1" style="margin-top:5px">'+
					'		<a href="javascript:;" class="custom-url-del"><i class="fa fa-times-circle"></i> </a>'+
					'	</div>'+
					'</div>';
				;
		if($('#custom-url .item').size() >= 3) {
			Notify.error('最多可添加3个门店详情页自定义链接');
			return false;
		}
		$('#custom-url').append(html);
	});

	$('#selectThumb').click(function(){
		util.uploadMultiPictures(function(images){
			var s = '';
			$.each(images, function(){
				s += '<div class="col-lg-3">'+
						'	<input type="hidden" name="thumbs[image][]" value="'+this.filename+'">' +
						'	<div class="panel panel-default panel-slide">'+
						'		<div class="btnClose" onclick="$(this).parent().parent().remove()"><i class="fa fa-times"></i></div>' +
						'		<div class="panel-body">'+
						'			<img src="'+this.url+'" width="100%" height="170">'+
						'			<div>'+
						'				<input class="form-control last pull-right" placeholder="跳转链接" name="thumbs[url][]">'+
						'			</div>'+
						'		</div>'+
						'	</div>'+
						'</div>'
			});
			$('#slideContainer').append(s);
		});
	});

	$(document).on('click', '.remind-reply-del, .comment-reply-del, .times-del, .custom-url-del', function(){
		$(this).parent().parent().remove();
		return false;
	});
});
irequire(['tiny'], function(tiny){
	$(document).on('click', '.label-add', function(){
		var $this = $(this);
		tiny.prompt($this, '', function(data) {
			if(!data) {
				return false;
			}
			var html = '<div class="btn-group btn-label">'+
					'		<input type="hidden" name="order_note[]" value="'+ data +'">'+
					'		<a class="btn btn-default border-radius-4">'+data+'</a>'+
					'		<a class="btn btn-default">'+
					'		    <span class="fa fa-times-circle label-delete"></span>'+
					'	    </a>'+
					'	</div>';
			$this.before(html);
		});

		$(document).on('click', '.label-delete', function(){
			$(this).parents('.btn-group').remove();
		});

		<?php  if($item['delivery_mode'] == 1) { ?>
			$(document).on('click', '.btn-build-delivery-time', function(){
				tiny.confirm($(this), '确定重新生成配送时间段吗?', function(){
					var pre_minute = parseInt($.trim($(':text[name="pre_delivery_time_minute"]').val()));
					if(isNaN(pre_minute)) {
						util.message('时间间隔只能是整数');
						return false;
					}
					if(!pre_minute) {
						util.message('时间间隔必须大于0');
						return false;
					}
					$.post("<?php  echo iurl('common/utility/build_time');?>", {pre_minute: pre_minute}, function(data) {
						var result = $.parseJSON(data);
						if(result.message.errno == -1) {
							util.message(result.message.message);
							return false;
						}
						var gettpl = $('#tpl-delivery-time').html();
						laytpl(gettpl).render(result.message.message, function(html){
							$('#delivery-times .containter').html(html);
						});
					});
				});
			});

			$(document).on('click', '.btn-delivery-time-item', function(){
				if($(this).hasClass('btn-success')) {
					$(this).parent().prev().prev().val(0);
					$(this).removeClass('btn-success').addClass('btn-default');
					$(this).html('已弃用');
				} else {
					$(this).parent().prev().prev().val(1);
					$(this).removeClass('btn-default').addClass('btn-success');
					$(this).html('使用中');
				}
			});
		<?php  } ?>
	});
});
</script>
<?php  include itemplate('public/footer', TEMPLATE_INCLUDEPATH);?>