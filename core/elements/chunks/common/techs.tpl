{if $_modx->resource.files?}
    <div class="flex-container">
        <div class="files-list tech-doc">
            {var $files = $_modx->resource.files|fromJSON}
            {foreach $files as $file}
                {var $filesize = $_modx->runSnippet('@FILE:snippets/getFilesize.php',[
                'input' => $file.file
            ])}
                {var $image = $_modx->runSnippet('phpthumbon',[
               'input' => 'files/'~$file.img,
               'options' => 'w=186&h=280&zc=1'
            ])}
                <div class="col-lg-6 tech-doc__item">
                    <div class="tech-doc__item-img">
                        <img src="{$image}" class="img img-responsive" alt="{$file.title}">
                    </div>
                    <div class="tech-doc__item-descr">
                        <h3 class="h4">{$file.title}</h3>
                        <a class="files-list__item" title="{$file.title}" href="files/{$file.file}">
                            <span class="files-list__ico">
                                <i class="ico ico--file">
                                    <svg class="svg-symbol svg-symbol--icon_download">
                                    <use xlink:href="#svg-symbol--icon_download" />
                                    </svg>
                                </i>
                            </span>
                            <span class="files-list__text">
                                <span class="files-list__item-title">Скачать файл</span>
                                <span class="files-list__item-size">{$filesize}</span>
                            </span>
                        </a>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
{/if}

{include 'file:chunks/common/consultForm.tpl'}