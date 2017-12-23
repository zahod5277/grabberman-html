<div class="contact-form">
    <h2 class="h2 h2--s">Напишите нам</h2>
    <form action="{$_modx->resource.id|url}" method="POST" class="ajax_form contact-form__form">
        <div class="col-lg-6 col-lg-6--45percent contact-form__group">
            <label for="name" class="contact-form__label">
                <input type="text" name="name" class="contact-form__input" placeholder="Имя*">
            </label>
            <label for="email" class="contact-form__label">
                <input type="text" name="email" class="contact-form__input" placeholder="E-mail*">
            </label>
            <label for="email" class="contact-form__label">
                <input type="text" name="phone" class="contact-form__input" placeholder="Телефон">
            </label>
        </div>
        <div class="col-lg-6 col-lg-6--45percent contact-form__group">
            <label for="name" class="contact-form__label">
            <textarea name="comment" class="contact-form__input contact-form__input--textarea" id="comment" placeholder="Сообщение*"></textarea>
            </label>
        </div>
        <div class="flex-container col-xs-12">
            {$_modx->getChunk('@FILE:chunks/common/politics.tpl',[
                'class' => ' col-lg-6 col-lg-6--45percent',
                'button' => 'Отправить'
            ])}
            <div class="col-lg-6 col-lg-6--45percent">
                <button type="submit" class="button button--rectangle button--black button--right">Отправить</button>
            </div>
        </div>
    </form>
</div>