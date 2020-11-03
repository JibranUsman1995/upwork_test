require "application_system_test_case"

class CashManagementTablesTest < ApplicationSystemTestCase
  setup do
    @cash_management_table = cash_management_tables(:one)
  end

  test "visiting the index" do
    visit cash_management_tables_url
    assert_selector "h1", text: "Cash Management Tables"
  end

  test "creating a Cash management table" do
    visit cash_management_tables_url
    click_on "New Cash Management Table"

    fill_in "Cash in", with: @cash_management_table.cash_in
    fill_in "Cash out", with: @cash_management_table.cash_out
    fill_in "Initial cash", with: @cash_management_table.initial_cash
    fill_in "Post", with: @cash_management_table.post_id
    click_on "Create Cash management table"

    assert_text "Cash management table was successfully created"
    click_on "Back"
  end

  test "updating a Cash management table" do
    visit cash_management_tables_url
    click_on "Edit", match: :first

    fill_in "Cash in", with: @cash_management_table.cash_in
    fill_in "Cash out", with: @cash_management_table.cash_out
    fill_in "Initial cash", with: @cash_management_table.initial_cash
    fill_in "Post", with: @cash_management_table.post_id
    click_on "Update Cash management table"

    assert_text "Cash management table was successfully updated"
    click_on "Back"
  end

  test "destroying a Cash management table" do
    visit cash_management_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cash management table was successfully destroyed"
  end
end
