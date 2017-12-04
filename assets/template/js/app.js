var App = (function () {

    //Тут можно определить приватные переменные и методы
    var options = {
        headerHeadroom: document.querySelector('[data-headroom]'),
        readyClass: 'page--ready',
        fadeInSpeed: 1500,
        swiperConfig: {
            nextButton: '.pagination__button-next',
            prevButton: '.pagination__button-prev',
            direction: 'horizontal',
            paginationClickable: true,
            loop: true,
            bulletClass: 'pagination__bullet',
            bulletActiveClass: 'pagination__bullet--active',
            pagination: '.swiper-pagination'
        },
        burgerClass: '.navbar__burger',
        burderSwitchSelector: '[data-navbar-open]',
        mobileMenuWrapper: '.mobile-menu',
        mobileMenu: 'mobile-menu-level1',
        mobileMenuActive: 'mobile-menu--active',
        level1MenuItem: '.mobile-menu-level1__item',
        level1MenuItemActive: 'mobile-menu-level1--active',
        fixtureHandlerActive: 'fixture-hover',
        fixtureHandler: '[data-fixture]',
        propertiesTableBtn: '.properties-table__button',
        propertiesTableModal: 'properties-table-modal',
        categoryRadio: '[name="fixtures"]',
        productRow: '.product-row',
    };

    //Объект, содержащий публичное API
    return {
        // Определяет тип страницы по data-page-type тэга html
        detectPageType: function () {
            App.html = $('html');
        },

        detectTouch: function () {
            App.touch = ('ontouchstart' in document.documentElement);

            if (App.touch) {
                $('html').addClass('page--touch');
            }

            App.pointerDownEvent = (App.touch)
                    ? 'touchstart'
                    : 'mousedown';

            App.pointerUpEvent = (App.touch)
                    ? 'touchend'
                    : 'mouseup';

            return App.touch;
        },

        init: function () {
            App.jQueryFunctions();
            App.detectPageType();
            App.detectTouch();
            App.sliderInit();
            App.mobileMenu();
            App.smoothScroll();
            App.mainHouse();
            App.productTableViewToggle();
            App.categoryFilter();
            App.radioDropdown();
            App.Header();
            //App.fixScroll();
        },

        load: function () {
            $(window).trigger({
                type: 'app:load'
            });
        },

        unload: function () {
            App.html.addClass('page--unloading');
        },

        platformClasses: function () {
            if (App.user.os.family == 'iOS' && App.user.os.major < 8) {
                $('html').addClass('ios-lt-8')
            }
            if (App.user.browser.family == 'Mobile Safari') {
                $('html').addClass('mobile-safari');
            }
        },
        Header: function () {
            App.stickyHeader = new Headroom(options.headerHeadroom, {
            offset: 150, 
            classes: {
              initial: "header",
              pinned: "header--pinned",
              unpinned: "header--unpinned",
              top: "header--top",
              notTop: "header--not-top",
              bottom: "header--bottom",
              notBottom: "header--not-bottom"
            }
            });
            App.stickyHeader.init();
        },
        mobileMenu: function () {
            //Появление меню
            $(options.burgerClass).on('click', function () {
                $(options.mobileMenuWrapper).toggleClass(options.mobileMenuActive);
                $('body').toggleClass('no-scroll')
            });
            //Появление выпадающего меню с плюсиками
            $(options.level1MenuItem).on('click', function (e) {
                if ($(this).data('container') == 1) {
                    //e.preventDefault();
                    console.log('est takoe');
                    $(this).toggleClass(options.level1MenuItemActive);
                }
            });
        },
        sliderInit: function () {
            var mySwiper = new Swiper('.swiper-container', options.swiperConfig);
        },
        smoothScroll: function () {
            var smthScroll = new SmoothScroll('[data-scroll]', {
                offset: 120
            });
        },
        mainHouse: function () {
            $(options.fixtureHandler).on('mouseover', function () {
                $('[data-fixture="' + $(this).data('fixture') + '"]').addClass(options.fixtureHandlerActive);
            });
            $(options.fixtureHandler).on('mouseleave', function () {
                $('[data-fixture="' + $(this).data('fixture') + '"]').removeClass(options.fixtureHandlerActive);
            });
        },
        productTableViewToggle: function () {
            //написать функцию инициализации по классу --active
            var tableClass = options.propertiesTableBtn.replace('.', ''),
                    activeClass = tableClass + '--active',
                    device = $('.' + activeClass).data('device'),
                    tableData = $('.' + activeClass).data('toggle');
            if (device == 'desktop') {
                $('table[data-toggle="' + tableData + '"]').show();
                $(options.propertiesTableBtn).on('click', function () {
                    $(options.propertiesTableBtn).removeClass(activeClass);
                    $(this).addClass(activeClass);
                    $('table[data-toggle]').hide();
                    $('table[data-toggle="' + $(this).data('toggle') + '"]').show();
                });
            } else {
                $(options.propertiesTableBtn).on('click', function () {
                    var inst = $('[data-remodal-id=' + options.propertiesTableModal + ']').remodal(),
                            title = $(this).text(),
                            table = $('table[data-toggle="' + $(this).data('toggle') + '"]').clone(),
                            html = '<table class="' + $(table).attr('class') + '">' + $(table).html() + '</table>';
                    $(options.propertiesTableBtn).removeClass(activeClass);
                    $(this).addClass(activeClass);
                    $('[data-remodal-id=' + options.propertiesTableModal + '] .' + options.propertiesTableModal + '__title').text(title);
                    $('[data-remodal-id=' + options.propertiesTableModal + '] .' + options.propertiesTableModal + '__content').html(html);
                    $('.remodal-wrapper').addClass(options.propertiesTableModal + '--opened');
                    inst.open();
                });
            }
        },
        categoryFilter: function () {
            $(options.categoryRadio).on('change', function () {
                var parent = $(this).data('parent');
                if (parent == 0) {
                    $(options.productRow).show();
                } else {
                    $(options.productRow).hide();
                    $(options.productRow + '[data-parent="' + parent + '"]').show();
                }
                $('.js-value').text($(this).val());
            });
        },
        radioDropdown: function () {
            $('.dropp-header__title').on('click', function () {
                console.log('e');
                $('.js-dropp-action').trigger('click');
            });
            //модуль дернут откуда-то, поэтому без привязки к опциям
            $('.js-dropp-action').click(function (e) {
                e.preventDefault();
                $(this).toggleClass('js-open');
                $(this).parent().next('.dropp-body').toggleClass('js-open');
            });

            $('label').click(function () {
                $(this).addClass('js-open').siblings().removeClass('js-open');
                $('.dropp-body,.js-dropp-action').removeClass('js-open');
            });
            $('input[name="dropp"]').change(function () {
                var value = $("input[name='dropp']:checked").val();
                $('.js-value').text(value);
            });
        },

        jQueryFunctions: function () {
            $.fn.disableSelection = function () {
                return this
                        .attr('unselectable', 'on')
                        .css('user-select', 'none')
                        .on('selectstart', false);
            };
        }

    }
})();

// Инициализация глобального модуля
$(function () {
    if (window.browserInvalid)
        return;

    App.init();

    $(window).on('load', function () {
        App.load();
    });

    if (App.pageLoaded) {
        App.load();
    }
});

$(window).on('load', function () {
    App.pageLoaded = true;
});