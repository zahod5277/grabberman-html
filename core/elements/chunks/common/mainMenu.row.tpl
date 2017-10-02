 <li class="main-menu__item">
    {if $link_attributes!='data-noclick="noclick"'}
    <a href="{$uri}" title="{$pagetitle}">
        {$pagetitle}
    </a>
    {else}
        {$pagetitle}
    {/if}
    {$wrapper}
</li>