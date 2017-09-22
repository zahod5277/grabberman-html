<div class="category-title">
    <div class="category-title__inner red-bg">
        <div class="container">
            <h1 class="h2">{$_modx->resource.pagetitle}</h1>
        </div>
    </div>
</div>

{$_modx->runSnippet('@FILE:snippets/getProductFilters.php',[
    'tpl' => '@FILE:chunks/category/categoryFilter.row.tpl',
    'category' => $_modx->resource.id,
    'default' => '@FILE:chunks/category/allFixturesFilter.tpl',
    'tplOuter' => '@FILE:chunks/category/categoryFilter.outer.tpl'
])}

{$_modx->runSnippet('@FILE:snippets/getProductFilters.php',[
    'tpl' => '@FILE:chunks/category/mobileCategoryFilter.row.tpl',
    'category' => $_modx->resource.id,
    'default' => '@FILE:chunks/category/mobileAllFixturesFilter.tpl',
    'tplOuter' => '@FILE:chunks/category/mobileCategoryFilter.outer.tpl'
])}

<div class="container flex-container">
    {$_modx->runSnippet('msProducts',[
    'parents' => $_modx->resource.id,
    'tpl' => '@FILE:chunks/category/product.row.tpl',
    'includeTVs' => 'fixtureIcons, tv_article',
    'processTVs' => 1,
    'prepareTVs' => 1
])}
</div>