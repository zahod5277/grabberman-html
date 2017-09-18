<div class="row ms2_product">
    <div class="col-md-6">
        
        {if $thumb?}
            <img src="{$image}" alt="{$pagetitle}" title="{$pagetitle}"/>
        {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                 alt="{$pagetitle}" title="{$pagetitle}"/>
        {/if}
    </div>
    <div class="col-md-10">
        {$pagetitle}
    </div>
</div>