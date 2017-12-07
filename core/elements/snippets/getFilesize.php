<?php
clearstatcache();
$size = filesize(MODX_BASE_PATH.'files/'.$input);
if ($size > 1024){
    $s = $size / 1024;
    $unit = 'Кб';
    if ($s > 1024){
        $s = $s / 1024;
        $unit = 'Мб';
    }
    $s = round($s);
} else {
    $s = $size;
    $unit = 'байт';
}
return $s.' '.$unit;
