json.array!(@user_accounts) do |user_account|
  json.extract! user_account, :id, :debit_account_no, :amount_deposit, :deposit_type, :tenure_of_deposit, :pan_no, :maturity_proceeds, :mobile_no, :email
  json.url user_account_url(user_account, format: :json)
end
