<form action="{$_modx->resource.id}" class="contact-form__form contact-form__form--modal">
    <label for="phone" class="contact-form__label contact-form__label--inline">
        <input type="text" name="phone" placeholder="Номер телефона*" class="contact-form__input contact-form__input--inline">
    </label>
    <button type="submit" class="button button--rectangle button--red">Перезвоните мне</button>
    <input type="hidden" name="article" value="{$_modx->resource.pagetitle}">
    {$_modx->getChunk('@FILE:chunks/common/politics.tpl',[
            'class' => ' politics--margined',
            'button' => 'Перезвоните мне'
        ])}
</form>