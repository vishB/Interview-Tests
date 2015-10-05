require 'test_helper'

class UserAccountsControllerTest < ActionController::TestCase
  setup do
    @user_account = user_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_account" do
    assert_difference('UserAccount.count') do
      post :create, user_account: { amount_deposit: @user_account.amount_deposit, debit_account_no: @user_account.debit_account_no, deposit_type: @user_account.deposit_type, email: @user_account.email, maturity_proceeds: @user_account.maturity_proceeds, mobile_no: @user_account.mobile_no, pan_no: @user_account.pan_no, tenure_of_deposit: @user_account.tenure_of_deposit }
    end

    assert_redirected_to user_account_path(assigns(:user_account))
  end

  test "should show user_account" do
    get :show, id: @user_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_account
    assert_response :success
  end

  test "should update user_account" do
    patch :update, id: @user_account, user_account: { amount_deposit: @user_account.amount_deposit, debit_account_no: @user_account.debit_account_no, deposit_type: @user_account.deposit_type, email: @user_account.email, maturity_proceeds: @user_account.maturity_proceeds, mobile_no: @user_account.mobile_no, pan_no: @user_account.pan_no, tenure_of_deposit: @user_account.tenure_of_deposit }
    assert_redirected_to user_account_path(assigns(:user_account))
  end

  test "should destroy user_account" do
    assert_difference('UserAccount.count', -1) do
      delete :destroy, id: @user_account
    end

    assert_redirected_to user_accounts_path
  end
end
