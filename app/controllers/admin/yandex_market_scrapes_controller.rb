class Admin::YandexMarketScrapesController < Spree::BaseController
  def new
    @link = params[:market_link]

    respond_to do |wants|
      wants.js
    end
  end
end
