Yandex Market Scraper v0.1
==========================

Расширение для движка интернет-магазинов Spree, предназначенное для импорта описания товара из сервиса Яндекс.Маркет

Описание:
---------
    1. Не оказвает влияния на модели. Использует существующую схему.
    2. Для парсинга Html используется Nokogiri.
    3. Для импорта описания необходима только ссылка на страницу сервиса Ядекс.Маркет с данным товаром.
    4. Возможность изменить описание перед сохранением.

CSS:
----
    Для сохранения оригинального форматирования можно использовать:
<pre><code>
    table.modelProperties {
      vertical-align:bottom;
      position: static;
      float: left;
      width: 400px;
      padding-right: 20px;
    }

    table.modelProperties {
      font-size: 13px;
      border-collapse: separate;
    }
    table.modelProperties tr {
      height: 15px;
    }

    table.modelProperties td {
      vertical-align: bottom;
      line-height:1.2em;
      padding:0 10px 0 0;
    }
    table.modelProperties td.title {
      padding: 0 0 15px 0;
    }
    table.modelProperties td.label {
      background: url('http://market.yandex.ru/i/dots.gif') repeat-x right bottom
    }
    table.modelProperties span {
      background-color:white;
      padding-right:2px
    }</code></pre>