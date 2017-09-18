<div class="container flex-container">
    {$_modx->runSnippet('msProducts',[
    'parents' => $_modx->resource.id,
    'tpl' => '@FILE:chunks/category/product.row.tpl'
])}
</div>