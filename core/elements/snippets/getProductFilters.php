<?php
$output = '';
$pdo = $modx->getService('pdoTools');
$productsParents = $modx->runSnippet('msProducts', [
    'parents' => $category,
    'tpl' => '@INLINE {$parent},'
        ]);
$productsParents = explode(',', $productsParents);
//приведем строковые данные к числам
foreach ($productsParents as $parent) {
    $parent = intval($parent);
    if ($parent != 0) {
        $parents[] = $parent;
    }
}
//уберем дубликаты родителей
array_unshift($parents, $category);
$parents = array_unique($parents);

//если есть доп.категории, рассовываем по чанкам
if (count($parents) > 1) {
    $filterRows .= $pdo->getChunk($default);
    foreach ($parents as $parent) {
        $parent = trim($parent);
        if (!empty($parent)) {
            $filterRows .= $pdo->getChunk($tpl, [
                'parent' => $parent
            ]);
        }
    }
    $output = $pdo->getChunk($tplOuter,[
        'output' => $filterRows
    ]);
}
return $output;
