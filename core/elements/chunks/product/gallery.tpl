{if $files?}
    <div class="product__image">
        <a href="{$files[0]['url']}" target="_blank">
            <img src="{$files[0]['url']}" alt="{$_modx->resource.pagetitle}" title="{$_modx->resource.pagetitle}">
        </a>
    </div>
{else}
{/if}

