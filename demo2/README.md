1. 编写一个ＨelloClass的扩展类
2. 此类有两个方法__construct()和getVersion()


```
<?php

$obj = new HelloClass();
$obj->getVersion();

echo "我是静态属性classVersion:".  HelloClass::$classVersion .PHP_EOL;


$functions = get_class_methods($obj);
$vars = get_class_vars('HelloClass');
var_dump($functions);
var_dump($vars);
```
输出：
```
我是__construct方法
我是getVersion方法
我是静态属性classVersion:1.1
array(3) {
  [0]=>
  string(11) "__construct"
  [1]=>
  string(10) "getVersion"
  [2]=>
  string(22) "confirm_bruce_compiled"
}
array(2) {
  ["author"]=>
  NULL
  ["classVersion"]=>
  string(3) "1.1"
}
```