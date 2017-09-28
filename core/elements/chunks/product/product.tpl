<div class="breadcrumbs">
    <div class="breadcrumbs__inner red-bg">
        <div class="container">
            <p class="breadcrumbs__item text text--s">
                <a href="{$_modx->resource.parent|url}">
                    <i class="ico ico--breadcrumbs">
                        <svg class="svg-symbol svg-symbol--icon_arrow_left">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-symbol--icon_arrow_left"></use>
                        </svg>
                    </i>
                    [[#[[#[[*id]].parent]].pagetitle]]
                </a>
            </p>
        </div>
    </div>
</div>

<div class="container flex-container product">
    <div class="col-xs-12 col-lg-6">
        <div class="product__mobile-heading">
            {if $_modx->resource.tv_article?}
                <p class="text text-l text--red">
                    <strong>#{$_modx->resource.tv_article}</strong>
                </p>
            {/if}
            <h1 class="h3">{$_modx->resource.pagetitle}</h1>
        </div>
        {$_modx->runSnippet('!msGallery',[
            'tpl' => '@FILE:chunks/product/gallery.tpl'
        ])}
    </div>
    <div class="col-xs-12 col-lg-6 product__descrption">
        <div class="product__desktop-heading">
            {if $_modx->resource.tv_article?}
                <p class="text text-l text--red">
                    <strong>#{$_modx->resource.tv_article}</strong>
                </p>
            {/if}
            <h1 class="h3">{$_modx->resource.pagetitle}</h1>
        </div>
        <p>{$_modx->resource.content}</p>
        {if $_modx->resource.fixtureScheme?}
            <p class="text--s product__scheme-title">
                Схема самореза
            </p>
            <div class="product__scheme">
                <img class="img-responsive" src="{$_modx->resource.fixtureScheme}" alt="Схема {$_modx->resource.pagetitle}">
            </div>
        {/if}
        {if $_modx->resource.fixtureIcons?}
            <div class="product__scheme">
                <img class="img-responsive" src="{$_modx->resource.fixtureIcons}" alt="Схема {$_modx->resource.pagetitle}">
            </div>
        {/if}
        <div class="product__order-btn-outer">
            <button data-remodal-target="order" class="button button--rectangle button--black product__order-btn">Заказать</button>
        </div>
    </div>
</div>
<div class="container flex-container product__text-table-outer">
    {var $textTables = [
            'appArea' => ['name' => 'Область применения','value' => $_modx->resource.appArea],
            'productFeatures' => ['name' => 'Особенности продукта', 'value' => $_modx->resource.productFeatures],
            'techProp' => ['name' => 'Технические характеристики', 'value' => $_modx->resource.techProp],
            'manual' => ['name' => 'Инструкция по установке', 'value' => $_modx->resource.manual]
        ]}
    {foreach $textTables as $textTable => $value}
        {if $value.value?}
            <div class="col-lg-6 product__text-table-item">
                <p class="text product__text-table-caption">{$value.name}</p>
                <ul>
                    {var $vals = $value.value|nl2br}
                    {var $v = $vals|split:'<br />'}
                    {foreach $v as $val}
                        {if $val?!=''}
                            <li>{$val}</li>
                            {/if}
                        {/foreach}
                </ul>
            </div>
        {/if}
    {/foreach}
</div>
<div class="container">
    {var $val = $_modx->resource.testTable|nl2br}
</div>
<div class="container">
    {if $.php.is_desktop()}
            {var $device = 'desktop'}
        {else}
            {var $device = 'handle'}
    {/if}
    {*<h2>Таблицы продукта</h2>*}
    <div class="properties-table">
        {var $propertiesTables = [
                'sizeBoxWeight' => ['name' => 'Типоразмеры, количество в упаковке (вес)','value' => $_modx->resource.sizeBoxWeight],
                'testBreakType1' => ['name' => 'Результаты испытаний на вырыв и/или срез', 'value' => $_modx->resource.testBreakType1],
                'testBreakType2' => ['name' => 'Результаты испытаний на вырыв и/или срез', 'value' => $_modx->resource.testBreakType2],
                'testCorrosion' => ['name' => 'Результаты испытаний на устойчивость к коррозии', 'value' => $_modx->resource.testCorrosion]
            ]}
        {var $active = 0}
        {foreach $propertiesTables as $propertiesTable => $value}
            {if $value.value?}
                {if $active == 0}
                    {var $active = 1}
                    {var $class = ' properties-table__button--active'}
                {else}
                    {var $class = ''}    
                {/if}
                <button data-device="{$device}" class="button button--rectangle properties-table__button{$class}" data-toggle="{$propertiesTable}">
                    {$value.name}
                </button>
            {/if}
        {/foreach}
        {if $_modx->resource.sizeBoxWeight?}
            {var $sizeBoxWeights = $_modx->resource.sizeBoxWeight|fromJSON}
            <table class="properties-table__item" data-toggle="sizeBoxWeight">
                <thead class="black-bg">
                    <tr>
                        <th>Артикул</th>
                        <th>Диаметр</th>
                        <th>Количество в упаковке</th>
                        <th>Вес</th>
                    </tr>
                </thead>
                {foreach $sizeBoxWeights as $sizeBoxWeight}
                    <tr>
                        <td> {$sizeBoxWeight.article}</td>
                        <td> {$sizeBoxWeight.diameter}</td>
                        <td> {$sizeBoxWeight.count}</td>
                        <td> {$sizeBoxWeight.weight}</td>
                    </tr>
                {/foreach}
            </table>
        {/if}
        {if $_modx->resource.testBreakType1?}
            {var $testBreakType1s = $_modx->resource.testBreakType1|fromJSON}
            <table class="properties-table__item" data-toggle="testBreakType1">
                <thead class="black-bg">
                    <tr>
                        <th>Диаметр</th>
                        <th>Ель</th>
                        <th>Красное дерево</th>
                        <th>Сосна</th>
                        <th>Фанера</th>
                        <th>ДСП</th>
                    </tr>
                </thead>
                {foreach $testBreakType1s as $testBreakType1}
                    <tr>
                        <td> {$testBreakType1.diameter}</td>
                        <td> {$testBreakType1.fir}</td>
                        <td> {$testBreakType1.redwood}</td>
                        <td> {$testBreakType1.pine}</td>
                        <td> {$testBreakType1.plywood}</td>
                        <td> {$testBreakType1.dsp}</td>
                    </tr>
                {/foreach}
            </table>
        {/if}
        {if $_modx->resource.testBreakType2?}
            {var $testBreakType2s = $_modx->resource.testBreakType2|fromJSON}
            <table class="properties-table__item" data-toggle="testBreakType2">
                <thead class="black-bg">
                    <tr>
                        <th>Диаметр</th>
                        <th>Толщина</th>
                        <th>Вырыв</th>
                        <th>Срез</th>
                        <th>Скручивание</th>
                    </tr>
                </thead>
                {foreach $testBreakType2s as $testBreakType2}
                    <tr>
                        <td> {$testBreakType2.diameter}</td>
                        <td> {$testBreakType2.thickness}</td>
                        <td> {$testBreakType2.break}</td>
                        <td> {$testBreakType2.cut}</td>
                        <td> {$testBreakType2.twisting}</td>
                    </tr>
                {/foreach}
            </table>
        {/if}
        {if $_modx->resource.testCorrosion?}
            {var $testCorrosions = $_modx->resource.testCorrosion|fromJSON}
            <table class="properties-table__item" data-toggle="testCorrosion">
                <thead class="black-bg">
                    <tr>
                        <th>Поверхность</th>
                        <th>Тест</th>
                        <th>Эталон/Стандарт</th>
                        <th>Результат</th>
                    </tr>
                </thead>
                {foreach $testCorrosions as $testCorrosion}
                    <tr>
                        <td> {$testCorrosion.surface}</td>
                        <td> {$testCorrosion.test}</td>
                        <td> {$testCorrosion.standart}</td>
                        <td> {$testCorrosion.result}</td>
                    </tr>
                {/foreach}
            </table>
        {/if}
    </div>
</div>
<div class="product__about-text container flex-container">
    <div class="col-xs-12 col-lg-6">
        <p class="text text--s">
            Все шурупы GRABBER® производятся на предприятиях, сертифицированных и одобренных по ISO 9002 и ISO 1401. Шурупы соответствуют SAE J78 и ASTM C1002, как указано в отчете ICCFS ER-5280, и одобрены для использования единым строительным кодексом. ©2012 GRABBER Construction Products, Inc. GRABBER®, STREAKER®, DRIVALL®, LOX®, GRABBERGARD® и SCAVENGER® являются зарегистрированными товарными знаками Grabber Construction Products, Inc.
        </p>
    </div>
    <div class="col-xs-12 col-lg-6">
        <img src="assets/template/img/demos/marks.png" alt="{$_modx->resource.pagetitle}" class="product__img-copyrights">
    </div>
</div>
