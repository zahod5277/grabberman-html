{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/category/category.tpl'}
{/block}
{block 'SCRIPTS'}
   <script src="assets/template/js/app.min.js"></script>
   <script>
    localStorage.lastCategory = window.location.href.replace('https://grabberman.ru','');
    localStorage.lastCategoryTitle = $('h1').text();
    </script>
{/block}