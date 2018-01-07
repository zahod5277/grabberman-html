{if $_modx->resource.video?}
    {var $videos = $_modx->resource.video|fromJSON}
    <div class="projects container flex-container">
        {foreach $videos as $video}
            {var $image = $_modx->runSnippet('phpthumbon',[
                'input' => 'files/'~$video.img,
                'options' => 'w=600&h=335&zc=1'
            ])}
            <div class="col-lg-6 video__item">
                <a href="{$video.link}" title="{$video.title}" data-fancybox="gallery" class="video__link">
                    <img src="{$image}" alt="{$video.title}" class="img img-responsive">
                    <button class="button button--square button--black video__button">
                        
                    </button>
                </a>
                <h3 class="h4 video__heading">{$video.title}</h3>
            </div>
        {/foreach}
    </div>
{/if}