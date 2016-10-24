<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:59:"C:\wamp\www\tp5mini/application/admin\view\links\index.html";i:1474877607;s:59:"C:\wamp\www\tp5mini/application/admin\view\common\head.html";i:1474875000;s:61:"C:\wamp\www\tp5mini/application/admin\view\common\header.html";i:1474875135;s:61:"C:\wamp\www\tp5mini/application/admin\view\common\navbar.html";i:1471616305;s:61:"C:\wamp\www\tp5mini/application/admin\view\common\footer.html";i:1474879114;}*/ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>小微云商城-系统管理</title>
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

<body class="skin-blue sidebar-mini wysihtml5-supported fixed">
<div class="wrapper">

 <header class="main-header">
    <!-- Logo -->
    <a href="<?php echo url('Index/index'); ?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>M</b>S</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>小微云商城</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         <!--  <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
           
          </li> -->
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
             
              <li class="footer"><a href="#">View all</a></li>
            </ul> -->
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul> -->
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             
              <span class="hidden-xs"><?php echo Session('admin_user_auth.username'); ?></span>
            </a>
            <ul class="dropdown-menu">
 
              <li class="user-footer">
                <div class="pull-right">
                  <a href="<?php echo url('user/edit'); ?>" class="btn btn-default btn-flat">个人资料</a>
                  
                </div>
                </li>
                <li>
                 <div class="box-footer">
                  
                   <a href="<?php echo url('common/logout'); ?>" class="btn btn-default btn-flat">退出</a>
                </div>
                
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
         <!--  <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
        </ul>
      </div>
    </nav>
  </header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel" style="height:40px;">
        <div class="pull-left info">
          <p><?php echo Session('admin_user_auth.username'); ?> <a href="#"><i class="fa fa-circle text-success"></i> </a></p>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">导航</li>
        <?php if(is_array($menuTree) || $menuTree instanceof \think\Collection): $i = 0; $__LIST__ = $menuTree;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        <li class="<?php echo get_menu_navbar_active($vo['id']); ?> treeview">
          <a href="<?php echo $vo['url']; ?>">
            <i class="<?php echo $vo['icon']; ?>"></i> <span><?php echo $vo['name']; ?></span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <?php if(!(empty($vo['_child']) || ($vo['_child'] instanceof \think\Collection && $vo['_child']->isEmpty()))): ?>
          <ul class="treeview-menu">
            <?php if(is_array($vo['_child']) || $vo['_child'] instanceof \think\Collection): $i = 0; $__LIST__ = $vo['_child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub): $mod = ($i % 2 );++$i;?>
                <li class="<?php echo get_menu_navbar_active($sub['id']); ?>"><a href="<?php echo url($sub['url']); ?>"><i class="<?php echo $sub['icon']; ?>"></i><?php echo $sub['name']; ?></a></li>
            <?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
          <?php endif; ?>
        </li>
        <?php endforeach; endif; else: echo "" ;endif; ?>
      </ul>
    </section>
    <!-- /.sidebar -->
</aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        链接管理
        <small>链接列表</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo url('Index/index'); ?>"><i class="fa fa-dashboard"></i> 主页</a></li>
        <li><a href="<?php echo url('admin/link/index'); ?>">插件</a></li>
        <li><a>链接管理</a></li>
        
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <div class="pull-left">
                <select class="form-control input-sm setStatus" name="status">
                  <option value="0">批量操作</option>
                  <option value="Y">显示</option>
                  <option value="N">隐藏</option>
                  <option value="-1">删除</option>                
                </select>
              </div>
              <div class="pull-left" style="margin-left:10px;"> 
                <button type="button" class="btn btn-block btn-default btn-sm setStatusSubmit">应用</button>
              </div>

              <div class="pull-left" style="margin-left:15px;">
              <select class="form-control input-sm filterStatus" name="visible">
                <option value="0">所选状态</option>
                <option value="Y">显示</option>
                <option value="N">隐藏</option>              
              </select>
              </div>

              <div class="pull-left" style="margin-left:10px;"> 
                <button type="button" class="btn btn-block btn-default btn-sm filter">筛选</button>
              </div>
             <div class="pull-left" style="margin-left:15px;">
                <a href="<?php echo url('add'); ?>" class="btn btn-block btn-primary btn-sm">新增</a>
              </div>
              <div class="box-tools pull-right">
                <div class="has-feedback">
                  <input class="form-control input-sm search" value="<?php echo isset($_GET['q']) ? $_GET['q'] :  ''; ?>" placeholder="搜索标题"  type="text">
                  <span class="glyphicon glyphicon-search form-control-feedback"></span>
                </div>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
            
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                  <thead>
                  <tr>
                    <th><input type="checkbox" class="selectAll"></th>
                    <th>ID</th>
                    <th width="10%">标题</th>
                    <th width="25%">链接地址</th>
                    <th width="7.5%">打开方式</th>
                    <th width="15%">链接描述</th> 
                    <th width="7.5%">是否可见</th> 
                    <th width="7.5%">添加者ID</th>
                    <th width="15%">创建时间</th>            
                  </tr>
                  </thead>
                  <tbody>
                  <?php if(is_array($linkList) || $linkList instanceof \think\Collection): $i = 0; $__LIST__ = $linkList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?>
                  <tr>
                    <td >
                      <input type="checkbox" name="ids" class="check" value="<?php echo $list['id']; ?>" />
                    </td>
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo $list['id']; ?></a>
                    </td>
                    <!--  <td class="mailbox-name" name="id" id="id"><?php echo $list['id']; ?></td> -->
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo $list['name']; ?></a>
                    </td>
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo $list['url']; ?></a>
                    </td>
                   
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo $list['target']; ?></a>
                    </td>
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo $list['description']; ?></a>
                    </td>
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>">
                        <?php if($list['visible'] == 'Y'): ?> 
                          <span class="label label-success">是</span>
                        <?php else: ?>
                          <span class="label label-danger">否</span>
                        <?php endif; ?>
                      </a>
                    </td>
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo $list['owner']; ?></a>
                    </td>
                    <td>
                      <a href="<?php echo url('Links/edit',['id'=>$list['id']]); ?>"><?php echo date('Y-m-d H:i:s',$list['createtime']); ?></a>
                    </td>                    
                  </tr>
                  <?php endforeach; endif; else: echo "" ;endif; ?>
                  
                  </tbody>
                  <thead>
                  <tr>
                    <th><input type="checkbox" class="selectAll"></th>
                    <th>ID</th>
                    <th>标题</th>
                    <th>链接地址</th>
                    <th>打开方式</th>
                    <th>链接描述</th> 
                    <th>隐藏</th> 
                    <th>添加者ID</th>
                    <th>创建时间</th>            
                  </tr>
                  </thead>                  
                </table>
                <!-- /.table -->
              </div>
              <!-- /.mail-box-messages -->
            </div>
            <!-- /.box-body -->
            <div class="pull-right" style="margin-right:20px;">
              <?php echo $linkList->render(); ?>
            </div>

            <div class="box-footer with-border">              
              <div class="pull-left">
                <select class="form-control input-sm Status" name="status">
                  <option value="0">批量操作</option>
                  <option value="Y">显示</option>
                  <option value="N">隐藏</option>
                  <option value="-1">删除</option>                
                </select>
              </div>
              <div class="pull-left" style="margin-left:10px;"> 
                <button type="button" class="btn btn-block btn-default btn-sm StatusSubmit">应用</button>
              </div>
              <!-- /.box-tools -->
            </div>            
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="http://qasl.cn">深蓝科技</a>.</strong> All rights
    reserved.
  </footer>
  <script type="text/javascript" src="http://tajs.qq.com/stats?sId=58696658" charset="UTF-8"></script>

</div>
<script src="STATIC_PATH/plugins/jQuery/jquery-1.9.1.min.js"></script>
<script src="STATIC_PATH/plugins/jQueryUI/jquery-ui.min.js"></script>

<script type="text/javascript">
  $.widget.bridge('uibutton',$.ui.button);
</script>>

<script type="text/javascript">
  $('document').ready(function(argument){
    //全选、取消全选的事件
    $("th .selectAll").click(function(){
      if(this.checked){
        $(".check").each(function(){this.checked=true;});
      }else{
        $(".check").each(function(){this.checked=false;});
      }
    });
    //批量显示隐藏
    $('.setStatusSubmit').click(function(){
      setStatus = $(".setStatus").val();
      var ids = new Array();//声明一个存放id的数组
      $("[name='ids']:checked").each(function(){
        ids.push($(this).val());
      });
      $.ajax({
        cache:true,
        type :"POST",
        url  :'<?php echo url('setStatus'); ?>',
        data :{status:setStatus,ids:ids},
        async:false,
           success:function(data){
            if(data.code){
              alert(data.msg);
              setTimeout(function(){
                location.href=data.url;
              },1000);
            } else {
              alert(data.msg);
            }
           },
           error:function(request){
            alert("页面错误");
           }
      });        
    });

    //批量显示隐藏
    $('.StatusSubmit').click(function(){
      setStatus = $(".Status").val();
      var ids = new Array();//声明一个存放id的数组
      $("[name='ids']:checked").each(function(){
        ids.push($(this).val());
      });
      $.ajax({
        cache:true,
        type :"POST",
        url  :'<?php echo url('setStatus'); ?>',
        data :{status:setStatus,ids:ids},
        async:false,
           success:function(data){
            if(data.code){
              alert(data.msg);
              setTimeout(function(){
                location.href=data.url;
              },1000);
            } else {
              alert(data.msg);
            }
           },
           error:function(request){
            alert("页面错误");
           }
      });        
    });
      // 搜索方法    
    $('.search').keyup(function (event) {
      if (event.keyCode == "13") {
          getUrl = '<?php echo url('index',['q'=>'qstring']); ?>';
          location.href = getUrl.replace("qstring", $('.search').val());
      }
    });
     //筛选方法
     $('.filter').click(function(event){
          getUrl  = '<?php echo url('index',['visible'=>'filterStatus']); ?>';
          getUrl = getUrl.replace("filterStatus", $('.filterStatus').val());
          location.href = getUrl;
     }); 
     // select选中
    $(".filterStatus").val("<?php echo isset($_GET['status']) ? $_GET['status'] :  '0'; ?>");

  })
</script>



<script>
  $(function () {
    
    //Enable check and uncheck all functionality
    $(".checkbox-toggle").click(function () {
      var clicks = $(this).data('clicks');
      if (clicks) {
        //Uncheck all checkboxes
        $(".mailbox-messages input[type='checkbox']").iCheck("uncheck");
        $(".fa", this).removeClass("fa-check-square-o").addClass('');
      } else {
        //Check all checkboxes
        $(".mailbox-messages input[type='checkbox']").iCheck("check");
        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
      }
      $(this).data("clicks", !clicks);
    });

    //Handle starring for glyphicon and font awesome
    
  });
      
      function dele(){
        if (!confirm("确认要删除？")) {
            return false;
        }
        else{
      var check = document.getElementsByName("check");
      
      var len=check.length;
      var idAll="";
  
      for(var i=0;i<len;i++){
        if(check[i].checked){
          ids=idAll+=check[i].value+",";
         
        }
     
      }
    
      $.ajax({
        type: "POST",
        url: "<?php echo url('menu/delAll'); ?>",
        data: {ids:ids},
        dataType: "json",
        success: function(data){
          alert(data.msg);
  
        }

      });
    }
  }
</script>
<script>
    function del(id){
        if (!confirm("确认要删除？")) {
            return false;
        }else{
            var id = id;
            $.ajax({
             type: "POST",
             url: "<?php echo url('menu/del'); ?>",
             data: {id:id},
             dataType: "json",
             success: function(data){
             alert(data.msg);
      
                      }

         });
        }
    }
</script>
<!-- Bootstrap 3.3.6 -->
<script src="STATIC_PATH/bootstrap/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="STATIC_PATH/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- AdminLTE App -->
<script src="STATIC_PATH/dist/js/app.min.js"></script>
</body>
</html>