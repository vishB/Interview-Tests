class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.integer :debit_account_no
      t.float :amount_deposit
      t.string :deposit_type
      t.string :tenure_of_deposit
      t.string :pan_no
      t.boolean :maturity_proceeds
      t.integer :mobile_no
      t.string :email

      t.timestamps null: false
    end
  end
end
