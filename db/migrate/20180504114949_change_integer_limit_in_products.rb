class ChangeIntegerLimitInProducts < ActiveRecord::Migration[5.1]
  def change
  	 change_column :products, :id, :integer, limit: 8
  end
end
