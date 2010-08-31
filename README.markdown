Yandex Market Scraper v0.4
==========================

Расширение для движка интернет-магазинов Spree, предназначенное для импорта описания и изображений товара из сервиса Яндекс.Маркет

Описание:
---------
    1. Не оказвает влияния на модели. Использует существующую схему.
    2. Импортирует описание, meta description товара и все его изображения с соответствующей страницы сервиса Яндекс.Маркет
    2. В качестве парсера Html документа используется Nokogiri.
    3. Для импорта описания и изображений необходима только ссылка на страницу сервиса Яндекс.Маркет с данным товаром.
    4. Предустмотрена возможность отключить загрузку изображений (полезно, когда для товара уже есть собственные изображения).
    5. Есть возможность изменить описание, product_meta_description, product_meta_keywords перед сохранением.

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

TODO:
-----

В последующих версиях предполагается реализовать:
    1. Автоматическую связь с таксонами по настраиваемым правилам.
