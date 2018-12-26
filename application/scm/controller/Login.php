<?php
namespace app\scm\controller;

use basic\SystemBasic;
use service\CacheService;
use service\UtilService;
use app\scm\model\system\SystemAdmin;
use think\Request;
use think\Response;
use think\Session;
use think\Url;
use think\Config;

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

	public function doLogin(Request $req)
	{
		//if (!$req->isPost()) return $this->redirect("index");
		
		list($account,$pwd,$verifycode) = UtilService::postMore([
            'username','passwd','verifycode'
        ],$req,true);

		if (Config::get("login_captcha") && !captcha_check($verifycode))
			return json(Config::get("error_code.10001")) ;
		
		$error  = Session::get('login_error')?:['num'=>0,'time'=>time()];

        if($error['num'] >=5 && $error['time'] > strtotime('- 5 minutes'))
            return json(Config::get("error_code.10004")) ;

        $res = SystemAdmin::login($account,$pwd);
        if ($res === 10000) {
        	Session::set('login_error',null);
            return json(Config::get("error_code.10000"));
        }
        else {
        	$error['num'] += 1;
            $error['time'] = time();
            Session::set('login_error',$error);
            return json(Config::get("error_code.".$res));
        }

        
	}

	public function captcha()
	{
		ob_clean();
        $captcha = new \think\captcha\Captcha([
            'codeSet'=>'0123456789',
            'length'=>4,
            'fontSize'=>30
        ]);
        return $captcha->entry();
	}

	public function logout($value='')
	{
		SystemAdmin::clearLoginInfo();
        $this->redirect('Login/index');
	}
}