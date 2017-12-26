<div class="adress">
    <div class="col-lg-6 col-lg-6--45percent adress__item">
        <h3 class="adresses__item-heading">Адрес:</h3>
        <p>{$_modx->resource.adress}</p>
    </div>
    <div class="col-lg-6 col-lg-6--45percent adress__item">
        <h3 class="adresses__item-heading">Телефоны:</h3>
        <p><span data-phone-link>{$_modx->config.phoneRussia}</span></p>
        <p><span data-phone-link>{$_modx->config.phoneMoscow}</span></p>
        <p><span data-phone-link>{$_modx->config.phoneSpb}</span></p>
    </div>
    <div class="col-lg-6 col-lg-6--45percent adress__item">
        <h3 class="adresses__item-heading">Часы работы:</h3>
        <p>{$_modx->resource.workHours}</p>
    </div>
    <div class="col-lg-6 col-lg-6--45percent adress__item">
        <h3 class="adresses__item-heading">E-mail:</h3>
        <p><a href="mailto:{$_modx->config.contactMail}">{$_modx->config.contactMail}</a></p>
    </div>
</div>

{$_modx->runSnippet('!AjaxForm',[
    'form' => '@FILE:chunks/forms/contactForm.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailTpl' => 'contact-form.email.tpl',
    'emailSubject' => 'Сообщение с сайта Grabberman.ru',
    'emailTo' => $_modx->config.siteMail,
    'emailFrom' => $_modx->config.emailFrom,
    'validate' => 'name:required,email:required,comment:required',
    'validationErrorMessage' =>'<h4>В форме содержатся ошибки! Заполните, пожалуйста, требуемые поля</h4>',
    'successMessage' => '<h4>Сообщение успешно отправлено! Скоро с вами свяжется наш менеджер.</h4>'
])}

{if $_modx->resource.regionRepresent?}
    {var $represents = $_modx->resource.regionRepresent|fromJSON}
    <div class="workers">
        <h2 class="h2 h2--s">Региональные представители</h2>
        <div class="workers__inner">
            {foreach $represents as $r}
                <div class="col-lg-6 col-lg-6--45percent workers__item">
                    {if $r.photo?}
                        <img src="files/{$r.photo}" alt="{$r.name}" class="img img-responsive">
                    {/if}
                    <h4>{$r.name}</h4>
                    <p class="worker__item-position">{$r.position}</p>
                    <p class="text"><span data-phone-link>{$r.phone}</span></p>
                    <p class="text"><a href="mailto:{$r.email}" title="{$r.name} email">{$r.email}</a></p>
                </div>
            {/foreach}
        </div>
    </div>
{/if}
{if $_modx->resource.dillers?}
    {var $dillers = $_modx->resource.dillers|fromJSON}
    <div class="dilers">
        <h2 class="h2 h2--s">Региональные дилеры</h2>
        <div class="dillers__inner">
            {foreach $dillers as $diller}
                <div class="col-lg-6 col-lg-6--45percent dillers__item">
                    <h4>{$diller.title}</h4>
                    <p class="text dillers__item-adress">{$diller.adress}</p>
                    {if $diller.phone!=''}
                        <p class="text dillers__item-contacts-item">
                            <span>Тел: </span>
                            <span data-phone-link>
                                {$diller.phone}
                            </span>
                            {if $diller.phone2!=''}
                                <span data-phone-link>
                                {$diller.phone2}
                                </span>
                            {/if}
                        </p>
                    {/if}
                    {if $diller.email!=''}
                        <p class="text dillers__item-contacts-item">
                            <span>E-mail: </span>
                            <a href="mailto:{$diller.email}" title="{$diller.title} e-mail">{$diller.email}</a>
                        </p>
                    {/if}
                    {if $diller.site!=''}
                        <p class="text dillers__item-contacts-item">
                            <span>Сайт: </span>
                            <a href="http://{$diller.site}" target="_blank" title="{$diller.title}">{$diller.site}</a>
                        </p>
                    {/if}
                    <p class="text dillers__item-description">{$diller.descr}</p>
                </div>
            {/foreach}
        </div>
    </div>
{/if}