<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:54:"C:\wamp\www\tp5mini/application/admin\view\wx\add.html";i:1471616307;s:59:"C:\wamp\www\tp5mini/application/admin\view\common\head.html";i:1476343053;}*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Thinkphp5CMF-系统管理</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="STATIC_PATH/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="STATIC_PATH/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="STATIC_PATH/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<form action="<?php echo url("","",true,false);?>" method="post" id="add">
	<table  class="table">
		<tr>
			<td width="100px;">顶级</td>
			<td>
				<select name="parent" >
				  <option value ="0">-无-</option>
				  <?php if(is_array($data) || $data instanceof \think\Collection): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
				  	 <option value ="<?php echo $vo['id']; ?>"><?php echo $vo['name']; ?></option>
				  <?php endforeach; endif; else: echo "" ;endif; ?>
				</select>
			</td>
		</tr>
		<tr>
			<td>名称</td>
			<td><input type="text" name="name" style="width:300px;"></td>
		</tr>
		<tr>
			<td>模式</td>
			<td>
				<input name="type" type="radio" value="1" checked="checked" />跳转链接
				<input name="type" type="radio" value="2" />发送消息
			</td>
		</tr>
		<tr id="url">
			<td>URL</td>
			<td>
				<input type="text" name="url" style="width:300px;">
			</td>
		</tr>
		<tr id="msg" style="display:none">
			<td>消息</td>
			<td>
				<textarea name="msg" id="" style="width:300px;height:100px;"></textarea>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<div class="pull-left" style="">
					<a href="<?php echo url('reply?type=2'); ?>" id="submit" class="btn btn-block btn-primary btn-sm">确定</a>
				</div>
			</td>
		</tr>
	</table>
</form>
</body>
<script src="STATIC_PATH/plugins/jQuery/jquery-1.9.1.min.js"></script>
<script>
$('#submit').click(function(){
	var data = $('#add').serialize();
	parent.window.closeadd(data);
});
$("input:radio").change(function() { 
	type = $(this).val();
	if(type==1){ 
		$('#url').show();
		$('#msg').hide();
	}else{
		$('#url').hide();
		$('#msg').show();
	}
});
</script>
</html>