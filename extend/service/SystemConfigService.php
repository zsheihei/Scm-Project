<?php

namespace service;


use app\admin\model\system\SystemConfig;

class SystemConfigService
{
    protected static $configList = null;

    public static function config($key)
    {
        if(self::$configList === null) self::$configList = self::getAll();
        return isset(self::$configList[$key]) ? self::$configList[$key] : null;
    }

    public static function get($key)
    {
        return SystemConfig::getValue($key);
    }

    public static function more($keys)
    {
        return SystemConfig::getMore($keys);
    }

    public static function getAll()
    {
        return SystemConfig::getAllConfig()?:[];
    }

}