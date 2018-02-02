<li class="mobile-menu-level1__item" {$link_attributes} data-container="{$isfolder}">
    {if $isfolder!='1' || $link_attributes!='data-tip="Саморезы"'}
    <a href="{$uri}" title="{$pagetitle}">
    {/if}
        {$pagetitle}                            
        {if $isfolder==1 && $link_attributes=='data-tip="Саморезы"'}
        <span class="mobile-menu-collapse">
            <i></i>
            <i></i>
        </span>
        {/if}
    {if $link_attributes!='data-noclick="noclick"' || $link_attributes!='data-tip="Саморезы"'}
    </a>
    {/if}
    {$wrapper}
</li>