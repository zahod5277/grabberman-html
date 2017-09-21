<div class="category-title">
    <div class="category-title__inner red-bg">
        <div class="container">
            <h1 class="h2">{$_modx->resource.pagetitle}</h1>
        </div>
    </div>
</div>
<div class="container flex-container radio__wrapper" id="productFilter">
    <div class="radio col-md-6 col-lg-6">
        <input class="radio__input" type="radio" name="payment" value="1" id="payment_1">
        <label class="radio__label" for="payment_1">
            Все саморезы
        </label>
    </div>
    <div class="radio col-md-6 col-lg-6">
        <input class="radio__input" type="radio" name="payment" value="3" id="payment_3">
        <label class="radio__label" for="payment_3">
            Для облицовки гипсокартоном 
        </label>
    </div>
</div>
<div class="container flex-container">
    {$_modx->runSnippet('msProducts',[
    'parents' => $_modx->resource.id,
    'tpl' => '@FILE:chunks/category/product.row.tpl',
    'includeTVs' => 'fixtureIcons, tv_article',
    'processTVs' => 1,
    'prepareTVs' => 1
])}
</div>