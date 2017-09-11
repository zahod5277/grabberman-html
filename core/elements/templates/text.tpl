{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    <div class="container">
        <h1>{$_modx->resource.pagetitle}</h1>
        <div>
            {$_modx->resource.content}
        </div>
    </div>
{/block}