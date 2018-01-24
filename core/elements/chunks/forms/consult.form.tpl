<div class="contact-form contact-form--consult">
    <h2 class="h2 h2--s h2--centered">Хотите получить доп. информацию?</h2>
    <form action="{$_modx->resource.id|url}" method="post" class="ajax_form contact-form__form">
        <div class="col-xs-12 contact-form__group contact-form__group--inline">
            <label for="name" class="contact-form__label contact-form__label--inline contact-form__label--inline-large">
                <input type="text" name="name" class="contact-form__input" placeholder="Имя*">
            </label>
            <label for="email" class="contact-form__label contact-form__label--inline contact-form__label--inline-large">
                <input type="text" name="email" class="contact-form__input" placeholder="E-mail*">
            </label>
        </div>
        <div class="flex-container col-xs-12">
            {$_modx->getChunk('@FILE:chunks/common/politics.tpl',[
                'class' => ' politics--centered',
                'button' => 'Отправить'
            ])}
        </div>
         <button type="submit" class="button button--rectangle button--black button--margin-auto">Отправить</button>
    </form>
</div>