<li class="mobile-menu-level1__item">
    <a href="{$uri}" data-container="{$isfolder}">
        {$pagetitle}                            
        {if $isfolder==1}
        <span class="mobile-menu-collapse">
            <i></i>
            <i></i>
        </span>
        {/if}
    </a>
    {$wrapper}
</li>