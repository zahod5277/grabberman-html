{if $_modx->resource.projects?}
    {var $projects = $_modx->resource.projects|fromJSON}
    <div class="projects container flex-container">
        {foreach $projects as $project}
            {var $image = $_modx->runSnippet('phpthumbon',[
                'input' => 'files/'~$project.img,
                'options' => 'w=600&h=335&zc=1'
            ])}
            <div class="col-lg-6 projects__item">
                <a href="files/{$project.img}" title="{$project.title}" data-fancybox="gallery">
                    <img src="{$image}" alt="{$project.title}" class="img img-responsive">
                </a>
                <h3 class="h4 projects__heading">{$project.title}</h3>
                <p class="text projects__description">{$project.descr}</p>
                <p class="projects__location">{$project.location}</p>
            </div>
        {/foreach}
    </div>
{/if}