<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:33:"./themes/default/index/login.html";i:1474532771;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title><?php echo config('web_site_title'); ?></title>
<meta name="keywords" content="<?php echo config('web_site_keyword'); ?>"/>
<meta name="description" content="<?php echo config('web_site_description'); ?>"/>
<!-- Bootstrap -->
<link href="<?php echo config('theme_path'); ?>/index/css/bootstrap.css" rel="stylesheet">
<!--引用通用样式-->
<link href="<?php echo config('theme_path'); ?>/index/css/common.css" rel="stylesheet">
<link href="<?php echo config('theme_path'); ?>/index/css/login.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="<?php echo config('theme_path'); ?>/index/js/html5shiv.min.js"></script>
    <script src="<?php echo config('theme_path'); ?>/index/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<header>
  <div class="container">
      <div class="row">
        <div class="col-xs-10" style="height:96px">
          <div class="header"><a href="<?php echo url('index/index'); ?>"><img  src="<?php echo config('theme_path'); ?>/index/images/login_logo.png" /></a><span class="line_left">|</span><span><a href="<?php echo url('base/login'); ?>">会员登录</a></span></div>          
        </div>
        <div class="col-xs-2 contract">
          <a href="<?php echo url('index/index'); ?>">返回首页</a>
          <span style="padding:0 3px 0 3px">|</span>
          <span ><a href="<?php echo url('article/page',['name'=>'job']); ?>">联系我们</a></span>
        </div>          
      </div>
  </div>
</header>
<!--main start-->
<div class="main main_img" >
  <div class="container">
    <div class="row">
        <div class="col-xs-8" ></div>
        <div class="col-xs-4 main_login">
        
        <!--login start-->
        <form action="" method="POST">
          <div class="main_member">会员登录</div>
          <div class="input-group " style="margin-top:30px">  
          <input type="text" id="username" class="form-control" placeholder="请输入手机号/用户名" >
          <span class="input-group-addon back" ><img  src="<?php echo config('theme_path'); ?>/index/images/icon_Member_login.png"></span>

          </div>
        <div class="input-group" style="margin-top:20px">
          <input type="password" id="password" class="form-control" placeholder="请输入密码" >
          <span class="input-group-addon back" ><img src="<?php echo config('theme_path'); ?>/index/images/icon_password.png"></span>          
        </div>
        <div class="input-group" style="margin-top:10px">       
          <input type="checkbox" aria-label="...">
          <span style="margin-left:5px">下次自动登录</span>        
        </div>
        <div class="input-group" style="margin-top:10px;">
          <button type="button" id="submit" class="  btn_btn" >会员登录</button>        
        </div>
        </form>
        <!--login end-->

        <div class="input-group pass">
           <span> <a href="<?php echo url('base/getPassword'); ?>"> 忘记登录密码？</a></span><span style="margin-left:170px"><a href="<?php echo url('base/register'); ?>">免费注册</a></span>
        <div style="margin-top:20px;">
        <p style="text-align:center"><hr class="hr-left"/><span style="margin-left:18px;margin-top:5px">使用第三方账号登录</span><hr class="hr-right" /></p>
            <div class="login_index">
            <a href="<?php echo url('OpenAuth/login',['type' => 'sina']); ?>"  target="_blank"><img src="<?php echo config('theme_path'); ?>/index/images/login_wb.png" /></a>
            <a href="<?php echo url('OpenAuth/login',['type' => 'wechat']); ?>" target="_blank"><img src="<?php echo config('theme_path'); ?>/index/images/login_wx.png" /></a>
            <a href="<?php echo url('OpenAuth/login',['type' => 'qq']); ?>"  target="_blank"><img src="<?php echo config('theme_path'); ?>/index/images/login_qq.png" /></a></div>
        </div>
       </div>
      </div>
    </div>
  </div>
</div>
<!--main end-->
<!--footer start-->
<div class="footer">
  <div class="footer-main">
      <div class="container">
      <div class="footer-main-left">
            <ul>
                <li>
                      <p class="title">关于我们</p>
                      <p><a href="<?php echo url('article/page?name=company'); ?>">公司简介</a></p>
                      <p><a href="<?php echo url('article/page?name=culture'); ?>">企业文化</a></p>
                      <p><a href="<?php echo url('article/page?name=history'); ?>">发展历程</a></p>
                      <p><a href="<?php echo url('article/page?name=honor'); ?>">荣誉资质</a></p>
                    </li>
                <li>
                      <p class="title">新闻资讯</p>
                      <p><a href="<?php echo url('article/lists?category=news'); ?>">新闻中心</a></p>
                      <p><a href="<?php echo url('article/lists?category=info'); ?>">行业资讯</a></p>
                    </li>
                <li>
                      <p class="title">联系我们</p>
                      <p><a href="<?php echo url('article/page?name=job'); ?>">招贤纳士</a></p>
                      <p><a href="<?php echo url('article/page?name=address'); ?>">在线留言</a></p>
                    </li>
              </ul>
          </div>
      <div class="footer-main-right">
              <div class="wap-erweima">
                  <p><img src="<?php echo config('theme_path'); ?>/index/images/code.png"></p>
                  <p>手机版</p>
                </div>
              <div class="wx-erweima">
                  <p><img src="<?php echo config('theme_path'); ?>/index/images/code.png"></p>
                  <p>微信平台</p>
                </div>
            </div>
        </div>
    </div>
  <div class="footer-bottom">
     版权所有 ® 2005-2015 迁安珍良缘农副食品超商&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司地址：迁安市中三元街59号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="#">深蓝科技</a>
    </div>
</div>
<!--footer end-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="<?php echo config('theme_path'); ?>/index/js/jquery.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="<?php echo config('theme_path'); ?>/index/js/bootstrap.min.js"></script>

<script type="text/javascript">

  var childWindow;
  function toQzoneLogin()
  {
      childWindow = window.open("oauth/index.php","TencentLogin","width=450,height=320,menubar=0,scrollbars=1, resizable=1,status=1,titlebar=0,toolbar=0,location=1");
  } 

  function closeChildWindow()
  {
      childWindow.close();
  }

  $('#submit').click(function(){
  var key = $("#username").val();
  var password = $("#password").val();
  if(key ==""||key =="请输入手机号/用户名")
  {
     alert("请输入手机号或用户名");
     return false;  
  }
  if(password ==""||password =="请输入密码")
  {
     alert("请输入密码");
     return false;  
  }
  $.ajax({
    type:"post",
    url:'<?php echo url('base/login'); ?>',
    data:{"key":key,"password":password},
    dataType:'json',
    success: function(data) {
            if (data.code) {
              $('#submit').text('登录中...')
              setTimeout(function () {
                location.href = data.url;
              }, 1000);
            } else {
              alert(data.msg);
            }

          },
          error: function(request) {
            alert("页面错误");
          },
     });

});
</script>
</body>
</html>