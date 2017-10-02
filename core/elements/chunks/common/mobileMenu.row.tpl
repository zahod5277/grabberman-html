<li class="mobile-menu-level1__item" data-container="{$isfolder}">
    {if $link_attributes!='data-noclick="noclick"'}
    <a href="{$uri}">
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