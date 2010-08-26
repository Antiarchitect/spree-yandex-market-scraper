class YandexMarketScraperExtension < Spree::Extension
  version "0.1"
  description "Позволяет получить описание товара из сервиса Яндекс маркет"
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
