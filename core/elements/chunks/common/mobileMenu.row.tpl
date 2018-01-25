<li class="mobile-menu-level1__item" {$link_attributes} data-container="{$isfolder}">
    {if $isfolder!='1'}
    <a href="{$uri}" title="{$pagetitle}">
    {/if}
        {$pagetitle}                            
        {if $isfolder==1}
        <span class="mobile-menu-collapse">
            <i></i>
            <i></i>
        </span>
        {/if}
    {if $link_attributes!='data-noclick="noclick"'}
    </a>
    {/if}
    {$wrapper}
</li>