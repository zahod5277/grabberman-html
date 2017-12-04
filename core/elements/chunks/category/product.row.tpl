<div class="col-xs-12 col-md-6 col-lg-6 product-row" data-parent="{$parent}" data-title="[[#[[+parent]].pagetitle]]">
    <a href="{$uri}" title="{$pagetitle}">
        {if $thumb?}
            <div class="product-row__thumb">
                <img src="{$image}" alt="{$pagetitle}" class="img img-responsive" title="{$pagetitle}"/>
            </div>
        {else}
        {/if}
        <div class="product-row__short-props">
            <div class="product-row__short-props-text">
                {if $tv_article?}
                    <h4 class="product-article product-article--catalog-article">
                        #{$tv_article}
                    </h4>
                {/if}
                <h3 class="product-row__title">
                    {$pagetitle}
                </h3>
            </div>
            {if $fixtureScheme?}
                <img src="{$fixtureScheme}" alt="{$pagetitle}" class="product-row__scheme">
            {/if}
        </div>
    </a>
</div>