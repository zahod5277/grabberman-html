<header class="header" data-headroom>
    <div class="header__wrapper">
        <div class="header__layout">
            <div class="header__logo-box">
                <img class="header__logo" src="assets/template/svg/grabberman_logo.svg" alt="">
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
                            <a href="tel:88007077645">8 (800) 707 76 45</a>
                        </span>
                        <span class="header__phone-item"><a href="tel:+74993224943">+7 (499) 322 49 43</a></span>
                        <span class="header__phone-item"><a href="tel:+78126112596">+7 (812) 611 25 96</a></span>
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