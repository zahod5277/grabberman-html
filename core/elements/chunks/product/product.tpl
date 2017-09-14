<div class="container">
    <h1>[[*pagetitle]]</h1>
    <div id="msProduct" class="row">
        <div class="col-md-6">
            [[!msGallery]]
        </div>
        <div class="col-md-6">
            <form class="form-horizontal ms2_form" method="post">
                <input type="hidden" name="id" value="[[*id]]"/>

                <div class="form-group">
                    {*<div class="col-md-offset-2 col-md-10">
                    <button type="submit" class="btn btn-default" name="ms2_action" value="cart/add">
                    <i class="glyphicon glyphicon-barcode"></i> [[%ms2_frontend_add_to_cart]]
                    </button>
                    </div>*}
                </div>
            </form>

        </div>
    </div>
    {if $_modx->resource.fixtureScheme?}
        <h3>Схема самореза</h3>
        <img src="{$_modx->resource.fixtureScheme}" alt="">
    {/if}
    {if $_modx->resource.textTables?}
        {var $tables = $_modx->resource.textTables|fromJSON}
        {foreach $tables as $table}
            <div>
                <h3>{$table.title}</h3>
                {var $textTableItems = $table.textTable|fromJSON}
                <table>
                    {foreach $textTableItems as $textTableItem}
                        <tr>
                            <td>> {$textTableItem.item}</td>
                        </tr>
                    {/foreach}
                </table>
            </div>
            <hr>
        {/foreach}
    {/if}
    <h2>Таблицы продукта</h2>
    {if $_modx->resource.sizeBoxWeight?}
        <h3>Типоразмеры, количество в упаковке (вес)</h3>
        {var $sizeBoxWeights = $_modx->resource.sizeBoxWeight|fromJSON}
        <table>
             <thead>
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
        <h3>Результаты испытаний на вырыв и/или срез тип 1</h3>
        {var $testBreakType1s = $_modx->resource.testBreakType1|fromJSON}
        <table>
             <thead>
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
        <h3>Результаты испытаний на вырыв и/или срез тип 2</h3>
        {var $testBreakType2s = $_modx->resource.testBreakType2|fromJSON}
        <table>
            <thead>
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
        <h3>Результаты испытаний на устойчивость к коррозии</h3>
        {var $testCorrosions = $_modx->resource.testCorrosion|fromJSON}
        <table>
                         <thead>
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
    [[*content]]
</div>