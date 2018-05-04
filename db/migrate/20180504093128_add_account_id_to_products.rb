class AddAccountIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :acount_id, :integer
  end
end
