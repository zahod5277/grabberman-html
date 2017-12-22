<div class="footer-mobile-logo">
    <div class="footer-mobile-logo-red-inner">
        <div class="container">
            <img src="assets/template/svg/grabberman_logo_footer.svg" alt="Grabber logo" class="footer-mobile-logo-img">
        </div>
    </div>
    <div class="black-bg">
        <div class="container">
            <p class="footer-proff-choice footer-proff-choice--mobile">Выбор профессионалов</p>
        </div>
    </div>
</div>
<footer>
    <div class="black-bg">
        <div class="container footer-container">
            <div class="footer__text-block">
                <h3 class="footer-text__heading">Адрес</h3>
                <p class="footer-text__paragraph">{$_modx->config.companyAdress}</p>
                <div class="footer-workhours">
                    <p>{$_modx->config.workHours}</p>
                    <p>{$_modx->config.holidays}</p>
                </div>
            </div>
            <div class="footer__text-block footer__text-block--contacts">
                <h3 class="footer-text__heading">Контакты</h3>
                <p class="footer-text__paragraph">
                    <span><span data-phone-link>{$_modx->config.phoneRussia}</span> (звонок по России бесплатный)</span>
                    <span><span data-phone-link>{$_modx->config.phoneMoscow}</span> (Москва) </span>
                    <span><span data-phone-link>{$_modx->config.phoneSpb}</span> (Санкт-Петербург)</span>
                </p>
                <p class="footer-text__paragraph footer-text__paragraph--hovered-link">
                    <i class="ico ico--mail">
                        <svg class="svg-symbol svg-symbol--icon_mail">
                        <use xlink:href="#svg-symbol--icon_mail" />
                        </svg> 
                    </i>
                    <a href="mailto:{$_modx->config.contactMail}">{$_modx->config.contactMail}</a>
                </p>
            </div>
            <div class="footer__text-block footer__text-block--empty"></div>
            <div class="footer__text-block footer__text-block_pinnedlogo">
                <div class="footer-logo">
                    <div class="footer-logo-red-inner">
                        <img src="assets/template/svg/grabberman_logo_footer.svg" alt="" class="footer-logo-img">
                    </div>
                    <p class="footer-proff-choice">Выбор профессионалов</p>
                </div>
            </div>
        </div>
        <div class="container">
            <p class="copyright">
                © 2017 ООО «ГРАББЕР-РУС»
                <span class="footer__politics">
                    <a href="{'35'|url}">
                        Политика конфиденциальности
                    </a>
                </span>
                <span class="devby">
                    <a target="_blank" href="http://pixeljam.ru/" rel="nofollow">
                        Разработано в
                    <span class="can">
                        <i class="can__cap"></i>
                        <i class="can__body shine--bg"></i>
                    </span>
                    Pixeljam
                    </a>
                </span>
            </p>
        </div>
    </div>
</footer>