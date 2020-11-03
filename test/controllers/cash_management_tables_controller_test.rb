require 'test_helper'

class CashManagementTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cash_management_table = cash_management_tables(:one)
  end

  test "should get index" do
    get cash_management_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_cash_management_table_url
    assert_response :success
  end

  test "should create cash_management_table" do
    assert_difference('CashManagementTable.count') do
      post cash_management_tables_url, params: { cash_management_table: { cash_in: @cash_management_table.cash_in, cash_out: @cash_management_table.cash_out, initial_cash: @cash_management_table.initial_cash, post_id: @cash_management_table.post_id } }
    end

    assert_redirected_to cash_management_table_url(CashManagementTable.last)
  end

  test "should show cash_management_table" do
    get cash_management_table_url(@cash_management_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_cash_management_table_url(@cash_management_table)
    assert_response :success
  end

  test "should update cash_management_table" do
    patch cash_management_table_url(@cash_management_table), params: { cash_management_table: { cash_in: @cash_management_table.cash_in, cash_out: @cash_management_table.cash_out, initial_cash: @cash_management_table.initial_cash, post_id: @cash_management_table.post_id } }
    assert_redirected_to cash_management_table_url(@cash_management_table)
  end

  test "should destroy cash_management_table" do
    assert_difference('CashManagementTable.count', -1) do
      delete cash_management_table_url(@cash_management_table)
    end

    assert_redirected_to cash_management_tables_url
  end
end
