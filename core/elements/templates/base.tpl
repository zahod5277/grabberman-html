<!DOCTYPE html>
<html>
    {block 'HEAD'}
        {include 'file:chunks/common/head.tpl'}
    {/block}
    <body>
        {block 'SVG'}
            {include 'file:chunks/common/svg.sprite.ch.html'}
        {/block}
        {block 'HEADER'}
            {include 'file:chunks/common/header.tpl'}
        {/block}
        {block 'CONTENT'}
        {/block}
        {block 'FOOTER'}
            {include 'file:chunks/common/footer.tpl'}
        {/block}
        {block 'SCRIPTS'}
            <script src="assets/template/js/app.min.js?{''|date_format:'%s'}"></script>
        {/block}
        {block 'MODALS'}
            {include 'file:chunks/modal/callback.tpl'}
        {/block}
    </body>
</html>
