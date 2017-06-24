require 'test_helper'

class PartnerDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partner_detail = partner_details(:one)
  end

  test "should get index" do
    get partner_details_url
    assert_response :success
  end

  test "should get new" do
    get new_partner_detail_url
    assert_response :success
  end

  test "should create partner_detail" do
    assert_difference('PartnerDetail.count') do
      post partner_details_url, params: { partner_detail: { amount: @partner_detail.amount, credit: @partner_detail.credit, debit: @partner_detail.debit, description: @partner_detail.description, partner_name: @partner_detail.partner_name } }
    end

    assert_redirected_to partner_detail_url(PartnerDetail.last)
  end

  test "should show partner_detail" do
    get partner_detail_url(@partner_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_partner_detail_url(@partner_detail)
    assert_response :success
  end

  test "should update partner_detail" do
    patch partner_detail_url(@partner_detail), params: { partner_detail: { amount: @partner_detail.amount, credit: @partner_detail.credit, debit: @partner_detail.debit, description: @partner_detail.description, partner_name: @partner_detail.partner_name } }
    assert_redirected_to partner_detail_url(@partner_detail)
  end

  test "should destroy partner_detail" do
    assert_difference('PartnerDetail.count', -1) do
      delete partner_detail_url(@partner_detail)
    end

    assert_redirected_to partner_details_url
  end
end
