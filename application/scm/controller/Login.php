<?php
namespace app\scm\controller;

use basic\SystemBasic;

/**
 * 用户登录验证控制器
 * @package app\scm\controller
 */
class Login extends SystemBasic
{
	
	public function index()
	{
		return view();
	}

	public function doLogin()
	{
		return '{"accessGranted":false,"errors":"<strong>Invalid login!<\/strong><br \/>Please enter valid username and password (demo\/demo).<br \/>Failed attempts: 1"}';
	}
}