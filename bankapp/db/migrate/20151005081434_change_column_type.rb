class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :user_accounts, :tenure_of_deposit, :date
  end

end
