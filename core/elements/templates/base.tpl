<!DOCTYPE html>
<html lang="ru">
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
            <script src="assets/template/js/app.min.js"></script>
        {/block}
        {block 'MODALS'}
            {include 'file:chunks/modal/callback.tpl'}
        {/block}
        {block 'metriks'}
            {ignore}
            <!-- Yandex.Metrika counter --> <script type="text/javascript" > (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter47146923 = new Ya.Metrika({ id:47146923, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/47146923" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
            {/ignore}
        {/block}
    </body>
</html>
