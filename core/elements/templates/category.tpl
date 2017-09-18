{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    <div class="container">
        <h1>{$_modx->resource.pagetitle}</h1>
    </div>
    {include 'file:chunks/category/category.tpl'}
{/block}