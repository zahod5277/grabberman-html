var App = (function () {

    //Тут можно определить приватные переменные и методы
    var options = {
        readyClass: 'page--ready',
        fadeInSpeed: 1500,
        swiperConfig: {
            nextButton: '.pagination__button-next',
            prevButton: '.pagination__button-prev',
            direction: 'horizontal',
            paginationClickable: true,
            loop:true,
            bulletClass: 'pagination__bullet',
            bulletActiveClass: 'pagination__bullet--active',
        }
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

        sliderInit: function () {
            var mySwiper = new Swiper('.swiper-container', options.swiperConfig);
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