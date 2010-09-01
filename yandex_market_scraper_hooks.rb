class YandexMarketScraperHooks < Spree::ThemeSupport::HookListener
  replace :admin_product_form_left, 'admin/products/market_description'
  replace :cart_item_description, 'orders/cart_item_description'
end
