class AddPlanToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :paid, :boolean
  end
end
