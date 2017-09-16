{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {if $_modx->user.id==1}
    {include 'file:chunks/product/product.tpl'}
    {else}
    {include 'file:chunks/product/productdemo.tpl'}
    {/if}
{/block}
