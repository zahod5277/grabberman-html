<div class="swiper-slide">
    <div class="swiper-inner" style="background-image:url('{$image}')">
        <div class="container slide-content">
            <h2 class="slide-heading text--white">{$name}</h2>
            <p class="slide-text">{$description}</p>
            {if $url?}
                <a href="{$url}" title="{$name}" class="button button--rectangle button--red main-slider__button-more">
                    <span class="main-slider__button-more-inner">
                        <span>Подробнее</span>
                        <i class="ico--arrow-more">
                            <svg class="svg-symbol svg-symbol--icon_arrow_next">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-symbol--icon_arrow_next"></use>
                            </svg>
                        </i>
                    </span>
                </a>
               {else}
                   <button title="{$name}" class="button button--rectangle button--red main-slider__button-more button--hidden">
                   </button> 
            {/if}
        </div>
    </div>
</div>