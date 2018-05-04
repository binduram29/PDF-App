class ChangeShopifyProductIdLimitInProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :shopify_product_id, :integer, limit: 8
  end
end
