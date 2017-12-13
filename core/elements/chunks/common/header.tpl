<header class="header" data-headroom>
    <div class="header__wrapper">
        <div class="header__layout">
            <div class="header__logo-box">
                {if $_modx->resource.id==1}
                <span><img class="header__logo" src="assets/template/svg/grabberman_logo.svg" alt="Grabber Россия"></span>
                {else}
                    <a href="{'1'|url}" title="На главную страницу">
                        <img class="header__logo" src="assets/template/svg/grabberman_logo.svg" alt="Grabber Россия">
                    </a>
                {/if}
            </div>
            <div class="header__bars">
                <div class="header__top-bar" data-header-hide-bar>
                    <div class="header__phone">
                        <span class="header__phone-item">
                            <i class="ico ico--phone">
                                <svg class="svg-symbol svg-symbol--icon_phone">
                                <use xlink:href="#svg-symbol--icon_phone" />
                                </svg>
                            </i>
                            <span data-phone-link>{$_modx->config.phoneRussia}</span>
                        </span>
                        <span class="header__phone-item">
                            <span data-phone-link>{$_modx->config.phoneMoscow}</span>
                        </span>
                        <span class="header__phone-item">
                            <span data-phone-link>{$_modx->config.phoneSpb}</span>
                        </span>
                    </div>
                </div>
                <div class="header__menu-bar">
                    <div class="header__menu">
                        <div class="header__menu-items">
                            {$_modx->runSnippet('pdoMenu',[
                                    'parents' => 0,
                                    'level' => 2,
                                    'tplOuter' => '@FILE:chunks/common/mainMenu.outer.tpl',
                                    'tpl' => '@FILE:chunks/common/mainMenu.row.tpl',
                                    'tplInner' => '@FILE:chunks/common/mainMenu.inner.outer.tpl',
                                    'tplInnerRow' => '@FILE:chunks/common/mainMenu.inner.row.tpl',
                                    'templates' => '-4'
                                ])}
                        </div>
                    </div>
                    <div class="header__buttons">
                        <div class="header-phones-cta">
                            <button class="button button--rectangle button--red" data-remodal-target="callback">
                                Обратный звонок
                            </button>
                        </div>
                    </div>
                </div>        
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
            'tplInnerRow' => '@FILE:chunks/common/mobileMenu.inner.row.tpl',
            'templates' => '-4'
        ])}
            </div>
        </div>
    </div>
</header>