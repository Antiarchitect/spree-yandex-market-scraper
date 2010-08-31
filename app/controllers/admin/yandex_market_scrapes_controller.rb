class Admin::YandexMarketScrapesController < Spree::BaseController
  require 'open-uri'
  # id - full-spec-cont
  def new
    market_link = open(params[:market_link])
    market_page = Nokogiri::HTML(market_link)
    description = market_page.at_xpath("//div[@id='full-spec-cont']")
    description.at_xpath("//p[@class='grey']").remove
    @link = description.inner_html()

    if params[:product_id]
      product = Product.find_by_id(params[:product_id])
      links_to_images = market_page.xpath("//td[@class='bigpic']") + market_page.xpath("//td[@class='smallpic']/div")
      links_to_images.each do |link|
        container = link.at_xpath("a") || link.at_xpath("img")
        image = container.attr("href") || container.attr("src")
        image_file = open(image)
        product.images.create(:attachment => image_file, :alt => product.name + '-' + (product.images.size + 1).to_s)
      end
    end

    respond_to do |wants|
      wants.js
    end
  end
end
