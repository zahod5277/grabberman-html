{if $files?}
    <div class="product__image">
       <img src="{$files[0]['url']}" alt="{$_modx->resource.pagetitle}" title="{$_modx->resource.pagetitle}">
    </div>
{else}
{/if}

