<header class="header">
    <div class="header-phone">
        <span class="header-phone__item">
            <i class="ico ico--phone">
                <svg class="svg-symbol svg-symbol--icon_phone">
                <use xlink:href="#svg-symbol--icon_phone" />
                </svg>
            </i>
            8 (800) 707 76 45
        </span>
        <span class="header-phone__item">+7 (499) 322 49 43</span>
        <span class="header-phone__item">+7 (812) 611 25 96</span>
    </div>
    <div class="logo">
        {if $_modx->resource.id==1}
            <img src="assets/template/svg/grabberman_logo.svg" alt="" class="img-responsive">
        {else}
            <a href="{'1'|url}" title="на главную">
                <img src="assets/template/svg/grabberman_logo.svg" alt="" class="img-responsive">
            </a>
        {/if}
    </div>
    <div class="main-menu-wrapper">
        {$_modx->runSnippet('pdoMenu',[
            'parents' => 0,
            'level' => 2,
            'tplOuter' => '@FILE:chunks/common/mainMenu.outer.tpl',
            'tpl' => '@FILE:chunks/common/mainMenu.row.tpl',
            'tplInner' => '@FILE:chunks/common/mainMenu.inner.outer.tpl',
            'tplInnerRow' => '@FILE:chunks/common/mainMenu.inner.row.tpl'
        ])}
    </div>
    <div class="header-phones-cta">
        <button class="button button--rectangle button--red" data-remodal-target="callback">
            Обратный звонок
        </button>
    </div>
    <div class="mobile-menu">
        <button class="navbar__burger burger" data-navbar-open="">
            <span class="burger__pan"></span>
            <span class="burger__wrapper">
                <span class="burger__l"></span>
                <span class="burger__l"></span>
                <span class="burger__l"></span>
            </span>
        </button>
        {$_modx->runSnippet('pdoMenu',[
            'parents' => 0,
            'level' => 2,
            'tplOuter' => '@FILE:chunks/common/mobileMenu.outer.tpl',
            'tpl' => '@FILE:chunks/common/mobileMenu.row.tpl',
            'tplInner' => '@FILE:chunks/common/mobileMenu.inner.outer.tpl',
            'tplInnerRow' => '@FILE:chunks/common/mobileMenu.inner.row.tpl'
        ])}
    </div>
</header>