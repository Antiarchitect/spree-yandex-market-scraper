class Admin::YandexMarketScrapesController < Spree::BaseController
  require 'open-uri'
  
  def new
    market_link = open(params[:market_link])
    market_page = Nokogiri::HTML(market_link)

    respond_to do |wants|
      wants.js
    end
  end
end
