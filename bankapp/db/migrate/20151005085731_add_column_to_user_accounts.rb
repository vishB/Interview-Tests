class AddColumnToUserAccounts < ActiveRecord::Migration
  def change
  	add_column :user_accounts, :maturity_period, :integer
  end
end
