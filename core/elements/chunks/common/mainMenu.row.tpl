 <li class="main-menu__item" {$link_attributes}>
    {if $isfolder!='1' || $link_attributes!='data-tip="Саморезы"'}
    <a href="{$uri}" data-noclick title="{$pagetitle}">
        {$pagetitle}
    </a>
    {else}
        {$pagetitle}
    {/if}
    {$wrapper}
</li>