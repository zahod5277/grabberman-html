<div class="breadcrumbs">
    <div class="breadcrumbs__inner red-bg">
        <div class="container">
            <p class="breadcrumbs__item text text--s">
                <i class="ico ico-breadcrumbs">
                    <svg class="svg-symbol svg-symbol--icon_arrow_left">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-symbol--icon_arrow_left"></use>
                    </svg>
                </i>
                Деревянные конструкции в интерьере
            </p>
        </div>
    </div>
</div>

<div class="container flex-container product">
    <div class="col-xs-12 col-lg-6">
        <div class="product__image">
            <img src="assets/template/img/demos/grabber-garpun-lstk-metall1.jpg" alt="">
        </div>
    </div>
    <div class="col-xs-12 col-lg-6 product__descrption">
        <h1 class="h3">Шуруп Grabber с конической шляпкой</h1>
        <p>Шурупы для дерева с шлицем LOX идеально подходят для любого проекта на открытом воздухе, настилов, заборов, оград, решеток, причалов и т.д.
            Отделка - Желтый цинк</p>
        <p class="text--s product__scheme-title">
            Схема самореза
        </p>
        <div class="product__scheme">
            <img src="assets/template/img/demos/7504_tech.jpg" alt="Схема {$_modx->resource.pagetitle}">
        </div>
        <button class="button button--rectangle button--black">Заказать</button>
    </div>
        </div>
    <div class="container flex-container product__text-table-outer">
        {if $_modx->resource.textTables?}
            {var $tables = $_modx->resource.textTables|fromJSON}
            {foreach $tables as $table}
                <div class="col-lg-6">
                    <p class="text product__text-table-caption">{$table.title}</p>
                    {var $textTableItems = $table.textTable|fromJSON}
                    <table>
                        {foreach $textTableItems as $textTableItem}
                            <tr>
                                <td>> {$textTableItem.item}</td>
                            </tr>
                        {/foreach}
                    </table>
                </div>
            {/foreach}
        {/if}
    </div>
    <div class="container">
        <h2>Таблицы продукта</h2>
        <div class="properties-table">
            <button class="button button--rectangle properties-table__button">
                Типоразмеры, количество в упаковке (вес)
            </button>
            <button class="button button--rectangle properties-table__button">
                Результаты испытаний на устойчивость к коррозии
            </button>
            <button class="button button--rectangle properties-table__button">
                Результаты испытаний на вырыв и/или срез
            </button>
            {if $_modx->resource.sizeBoxWeight?}
                {var $sizeBoxWeights = $_modx->resource.sizeBoxWeight|fromJSON}
                <table class="properties-table__item">
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
                <table class="properties-table__item">
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
               <table class="properties-table__item">
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
                <table class="properties-table__item">
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
        <div class="product__about-text">
            <p class="text">
                Все шурупы GRABBER® производятся на предприятиях, сертифицированных и одобренных по ISO 9002 и ISO 1401. Шурупы соответствуют SAE J78 и ASTM C1002, как указано в отчете ICCFS ER-5280, и одобрены для использования единым строительным кодексом. ©2012 GRABBER Construction Products, Inc. GRABBER®, STREAKER®, DRIVALL®, LOX®, GRABBERGARD® и SCAVENGER® являются зарегистрированными товарными знаками Grabber Construction Products, Inc.
            </p>
        </div>
    </div>
</div>