{include 'file:chunks/main/slider.tpl'}
<section id="main-page">
    <div class="scroll-button">
        <a data-scroll href="#fixture" class="button button--red button--square button--square-lg">
            <i class="ico--arrow-bottom">
                <svg class="svg-symbol svg-symbol--icon_arrow_bottom">
                <use xlink:href="#svg-symbol--icon_arrow_bottom" />
                </svg>
            </i>
        </a>
    </div>
    <div class="container">
        <div class="fixture" id="fixture">
            <!--разобраться с h1 и прочими h-->
            <h1>Схема применения</h1>
            <p class="fixture-description">
                {$_modx->resource.introtext}
            </p>
            {include 'file:chunks/main/fixture-list.tpl'}
            <div class="fixture__main-text">
                {$_modx->resource.content}
            </div>
        </div>
    </div>
</section>