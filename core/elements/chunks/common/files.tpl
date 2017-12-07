{if $_modx->resource.files?}
    <div class="files-list">
        {var $files = $_modx->resource.files|fromJSON}
        {foreach $files as $file}
            {var $filesize = $_modx->runSnippet('@FILE:snippets/getFilesize.php',[
                'input' => $file.file
            ])}
            <a class="files-list__item" title="{$file.title}" href="{$file.file}">
                <span class="files-list__ico">
                    <i class="ico ico--file">
                        <svg class="svg-symbol svg-symbol--icon_download">
                            <use xlink:href="#svg-symbol--icon_download" />
                        </svg>
                    </i>
                </span>
                <span class="files-list__text">
                    <span class="files-list__item-title">{$file.title}</span>
                    <span class="files-list__item-size">{$filesize}</span>
                </span>
            </a>
            <br>
        {/foreach}
    </div>
{/if}