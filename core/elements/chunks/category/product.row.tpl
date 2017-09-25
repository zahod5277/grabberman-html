<div class="col-xs-12 col-md-6 col-lg-6 product-row" data-parent="{$parent}" data-title="[[#[[+parent]].pagetitle]]">
    {if $thumb?}
        <div class="product-row__thumb">
            <a href="{$uri}" title="{$pagetitle}">
                <img src="{$image}" alt="{$pagetitle}" title="{$pagetitle}"/>
            </a>
        </div>
    {else}
    {/if}
    <div class="product-row__short-props">
        {if $tv_article?}
            <h4 class="product-row__article">
                <strong>
                    #{$tv_article}
                </strong>
            </h4>
        {/if}
        <h3 class="product-row__title">
            <a href="{$uri}" title="{$pagetitle}">{$pagetitle}</a>
        </h3>
        {if $fixtureIcons?}
            <img src="{$fixtureIcons}" alt="{$pagetitle}" class="product-row__scheme">
        {/if}
    </div>
</div>