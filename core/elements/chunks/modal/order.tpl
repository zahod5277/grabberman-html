<div class="remodal order-modal contact-form" data-remodal-id="order">
    <button data-remodal-action="close" class="remodal-close"></button>
    <h3 class="order-modal__title">Заказать {$_modx->resource.pagetitle}<span></span></h3>
    <p>
        Заполните форму и мы свяжемся с вами в ближайшее время!
    </p>
    {$_modx->runSnippet('!AjaxForm',[
        'form' => '@FILE:chunks/forms/order.form.tpl',
        'hooks' => 'spam,email,FormItSaveForm',
        'emailTpl' => 'order.email.tpl',
        'emailSubject' => 'Сообщение с сайта Grabberman.ru',
        'emailTo' => $_modx->config.siteMail,
        'emailFrom' => $_modx->config.emailFrom,
        'validate' => 'phone:required',
        'validationErrorMessage' =>'<h4>В форме содержатся ошибки! Заполните, пожалуйста, требуемые поля</h4>',
        'successMessage' => '<h4>Сообщение успешно отправлено! Скоро с вами свяжется наш менеджер.</h4>'
    ])}
</div>