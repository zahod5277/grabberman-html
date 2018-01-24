{$_modx->runSnippet('!AjaxForm',[
    'form' => '@FILE:chunks/forms/consult.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailTpl' => 'contact-form.email.tpl',
    'emailSubject' => 'Сообщение с сайта Grabberman.ru',
    'emailTo' => $_modx->config.siteMail,
    'emailFrom' => $_modx->config.emailFrom,
    'validate' => 'name:required,email:required,comment:required',
    'validationErrorMessage' =>'<h4>В форме содержатся ошибки! Заполните, пожалуйста, требуемые поля</h4>',
    'successMessage' => '<h4>Сообщение успешно отправлено! Скоро с вами свяжется наш менеджер.</h4>'
])}