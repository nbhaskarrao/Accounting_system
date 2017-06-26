require 'test_helper'

class AccountDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_detail = account_details(:one)
  end

  test "should get index" do
    get account_details_url
    assert_response :success
  end

  test "should get new" do
    get new_account_detail_url
    assert_response :success
  end

  test "should create account_detail" do
    assert_difference('AccountDetail.count') do
      post account_details_url, params: { account_detail: { account_name: @account_detail.account_name, amount: @account_detail.amount, credit: @account_detail.credit, debit: @account_detail.debit, description: @account_detail.description } }
    end

    assert_redirected_to account_detail_url(AccountDetail.last)
  end

  test "should show account_detail" do
    get account_detail_url(@account_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_detail_url(@account_detail)
    assert_response :success
  end

  test "should update account_detail" do
    patch account_detail_url(@account_detail), params: { account_detail: { account_name: @account_detail.account_name, amount: @account_detail.amount, credit: @account_detail.credit, debit: @account_detail.debit, description: @account_detail.description } }
    assert_redirected_to account_detail_url(@account_detail)
  end

  test "should destroy account_detail" do
    assert_difference('AccountDetail.count', -1) do
      delete account_detail_url(@account_detail)
    end

    assert_redirected_to account_details_url
  end
end
