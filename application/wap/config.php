<?php
// +----------------------------------------------------------------------
// | Minishop [ Easy to handle for Micro businesses ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://www.qasl.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: tangtanglove <dai_hang_love@126.com> <http://www.ixiaoquan.com>
// +----------------------------------------------------------------------

/**
 * 系统配文件
 * 所有系统级别的配置
 */
return [
    // URL设置
    'url_common_param'      =>  true,
    // Session设置
    'session'               => [
        'prefix'     => 'minishop',
        'type'       => '',
        'auto_start' => true,
    ],
    // 验证码设置
    'captcha'               =>  [
        'fontSize'    =>    30,    // 验证码字体大小
        'length'      =>    3,     // 验证码位数
        'useNoise'    =>    false, // 关闭验证码杂点
    ],
    // 多语言设置
    'lang_switch_on'        => true,   // 开启语言包功能
    'lang_list'             => ['zh-cn,zh-tw,en-us'], // 支持的语言列表
    // 模板设置
    'view_replace_str'      =>[
        'STATIC_PATH'=> __ROOT__.'/static', // 模板变量替换
    ],
    //云打印机配置
    'y_print'               => [
        //API密钥              
        'apiKey'      => 'c544b23386d3a96aa93dbacbe8f5e81982e5c16a', 
        //用户ID   
        'partner'     => '5141', 
        //打印机终端号                                       
        'machine_code'=> '4004506971',  
        //打印机密钥                                
        'msign'       => 'ykze58hmjyvy'                         
    ],
    //邮箱发送配置
    'email'         =>[
        'mail_address'  => '981476894@qq.com',//邮箱地址
        'mail_port'     => '465',
        'mail_smtp'     => 'smtp.qq.com',//邮箱smtp服务器
        'mail_loginname'=> '981476894',//邮箱登陆帐号
        'mail_password' => 'gkrxuxsjbchgbdea',//邮箱密码
        'mail_charset'  => 'utf-8',
        'mail_auth'     => true,//邮箱认证
        'mail_html'     => true,
    ],
    //邮件有效期
    'email_expiry' => 60*15,
];
