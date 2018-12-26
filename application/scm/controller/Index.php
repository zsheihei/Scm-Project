<?php
namespace app\scm\controller;
use app\scm\model\system\SystemMenus;
use app\scm\model\system\SystemRole;

class Index extends Auth
{
    public function index()
    {
    	$adminInfo = $this->adminInfo->toArray();
    	$roles  = explode(',',$adminInfo['roles']);
    	$this->assign([
            'menuList'=>SystemMenus::menuList(),
            'role_name'=>SystemRole::where('id',$roles[0])->field('role_name')->find()
        ]);

        return view();
    }

    public function main()
    {
    	return "ok";
    }
}
