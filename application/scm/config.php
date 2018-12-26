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
    // 'exception_handle'  => \basic\AdminException::class,
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
        10000     => ["errcode" => 0,"errmsg" => null],
        10001     => ["errcode" => 10001, "errmsg" => "验证码错误。"],
        10002     => ["errcode" => 10002, "errmsg" => "用户名或密码错误。"],
        10003     => ["errcode" => 10003, "errmsg" => "用户名或密码错误。"],
        10004     => ["errcode" => 10004, "errmsg" => "错误次数过多，请5分钟后重试。"],
        10005     => ["errcode" => 10005, "errmsg" => "账号已被禁用，请联系系统管理员。"],
    ]  

];
