class YandexMarketScraperHooks < Spree::ThemeSupport::HookListener
  replace :admin_product_form_left, 'admin/products/market_description'
end
