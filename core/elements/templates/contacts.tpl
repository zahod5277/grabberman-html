{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    <div class="text_outer margined-block">
        <div class="category-title">
            <div class="category-title__inner red-bg">
                <div class="container">
                    <h1 class="h2">{$_modx->resource.pagetitle}</h1>
                </div>
            </div>
        </div>
       <div class="container contacts">
            {include 'file:chunks/contacts/contacts.tpl'}
        </div>
    </div>
{/block}