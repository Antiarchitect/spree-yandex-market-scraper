require File.dirname(__FILE__) + '/../test_helper'

class YandexMarketScraperExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(Rails.root), 'vendor', 'extensions', 'yandex_market_scraper'), YandexMarketScraperExtension.root
    assert_equal 'Yandex Market Scraper', YandexMarketScraperExtension.extension_name
  end
  
end
