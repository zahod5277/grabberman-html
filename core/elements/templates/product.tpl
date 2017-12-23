{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/product/product.tpl'}
    {include 'file:chunks/modal/propertiesTableModal.tpl'}
{/block}
{block 'MODALS'}
    {include 'file:chunks/modal/callback.tpl'}
    {include 'file:chunks/modal/order.tpl'}
{/block}
