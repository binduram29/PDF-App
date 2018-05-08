class ChangeIntegerLimitInOrders < ActiveRecord::Migration[5.1]
  def change
  	change_column :orders, :shopify_order_id, :integer, limit: 8
  	change_column :orders, :line_item_count, :integer, limit: 8
  	change_column :orders, :id, :integer, limit: 8
  end
end
