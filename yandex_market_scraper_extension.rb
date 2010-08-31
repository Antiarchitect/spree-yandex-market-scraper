class YandexMarketScraperExtension < Spree::Extension
  version "0.3.0"
  description "Расширение для движка Spree, поозволяющее получить описание и изображения товара из сервиса Яндекс.Маркет"
  url "http://github.com/Antiarchitect/spree-yandex-market-scraper"

  def self.require_gems(config)
    config.gem "nokogiri", :source => "http://rubygems.org"
  end
  
  def activate
    ProductsHelper.module_eval do
      def product_description(product)
        raw(product.description)
      end
    end
  end
end
