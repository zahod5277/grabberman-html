<div class="remodal order-modal" data-remodal-id="order">
    <button data-remodal-action="close" class="remodal-close"></button>
    <h3 class="order-modal__title">Заказать {$_modx->resource.pagetitle}<span></span></h3>
    <p>
        Заполните форму и мы свяжемся с вами в ближайшее время!
    </p>
    <form action="#" class="callback-form">
        <input type="text" placeholder="Номер телефона" class="form-control form-control_inline">
        <button data-remodal-action="confirm" type="submit" class="button button--rectangle button--red">Перезвоните мне</button>
        <input type="hidden" name="article" value="{$_modx->resource.pagetitle}">
    </form>
</div>