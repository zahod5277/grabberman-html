<div class="contact-form">
    <h2 class="h2 h2--s">Напишите нам</h2>
    <form action="{$_modx->resource.id|url}" method="POST" class="ajax_form contact-form__form">
        <div class="col-lg-6 col-lg-6--45percent contact-form__group">
            <input type="text" name="name" class="contact-form__input" placeholder="Имя">
            <input type="text" name="phone" class="contact-form__input" placeholder="Телефон">
            <input type="text" name="email" class="contact-form__input" placeholder="E-mail">
        </div>
        <div class="col-lg-6 col-lg-6--45percent contact-form__group">
            <textarea name="comment" class="contact-form__input contact-form__input--textarea" id="comment" placeholder="Сообщение"></textarea>
        </div>
        <div class="flex-container col-xs-12">
            <div class="col-lg-6 col-lg-6--45percent politics">
                <p>Нажимая кнопку Отправить, я соглашаюсь с <a href="#">Политикой конфиденциальности</a></p>
            </div>
            <div class="col-lg-6 col-lg-6--45percent">
                <button type="submit" class="button button--rectangle button--black button--right">Отправить</button>
            </div>
        </div>
    </form>
</div>