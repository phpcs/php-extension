<?php



$obj = new HelloClass();



$obj->getVersion();

echo "我是静态属性classVersion:".  HelloClass::$classVersion .PHP_EOL;

$functions = get_class_methods($obj);
$vars = get_class_vars('HelloClass');
var_dump($functions);
var_dump($vars);
