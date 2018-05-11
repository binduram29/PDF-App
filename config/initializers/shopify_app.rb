ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "b73549742b804d69a14000e35b5ccde2"
  config.secret = "03cabaf971c325a00674bbc029e2a715"
  config.scope = "read_orders, read_products, read_customers"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
