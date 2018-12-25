<?php
//配置文件
return [
    'session'                => [
        // SESSION 前缀
        'prefix'         => 'admin',
        // 驱动方式 支持redis memcache memcached
        'type'           => '',
        // 是否自动开启 SESSION
        'auto_start'     => true,
    ],
    // 是否开启登录验证码
    'login_captcha'     => false,
    'empty_controller'  => 'Index',
    'exception_handle'  => \basic\AdminException::class,
    // 视图输出字符串内容替换
    'view_replace_str'       => [
        '{ADMIN_PATH}'   => PUBILC_PATH.'system/',//后台
        '{FRAME_PATH}'   => PUBILC_PATH.'system/frame/',//H+框架
        '{PLUG_PATH}'    => PUBILC_PATH.'static/plug/',//前后台通用
        '{MODULE_PATH}'  => PUBILC_PATH.'system/module/',//后台功能模块
        '{STATIC_PATH}'  => PUBILC_PATH.'static/',//全站通用
        '{ASSETS}'       => PUBILC_PATH."assets/",
        '{PUBLIC_PATH}'  => PUBILC_PATH,//静态资源路径
    ],
    // 错误信息
    "error_code"        => [
        //100xx 用于用户帐户与权限类
        10000     => ["errcode" => "10000","errmsg" => "验证码错误。"],
        10001     => ["errcode" => "10001","errmsg" => "用户名不存在。"]
    ]  

];
