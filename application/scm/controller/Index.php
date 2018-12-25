<?php
namespace app\scm\controller;

class Index extends Auth
{
    public function index()
    {
        return view();
    }

    public function main()
    {
    	return "ok";
    }
}
