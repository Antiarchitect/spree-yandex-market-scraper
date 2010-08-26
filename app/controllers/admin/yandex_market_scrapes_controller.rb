class Admin::YandexMarketScrapesController < Spree::BaseController
  require 'open-uri'
  # id - full-spec-cont
  def new
    market_link = open(params[:market_link])
    market_page = Nokogiri::HTML(market_link)
    node = market_page.at_xpath("//div[@id='full-spec-cont']")
    node.at_xpath("//p[@class='grey']").remove
    @link = node.inner_html()


    respond_to do |wants|
      wants.js
    end
  end
end
