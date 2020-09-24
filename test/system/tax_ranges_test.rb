require "application_system_test_case"

class TaxRangesTest < ApplicationSystemTestCase
  setup do
    @tax_range = tax_ranges(:one)
  end

  test "visiting the index" do
    visit tax_ranges_url
    assert_selector "h1", text: "Tax Ranges"
  end

  test "creating a Tax range" do
    visit tax_ranges_url
    click_on "New Tax Range"

    fill_in "Minimum value", with: @tax_range.minimum_value
    fill_in "Percentual", with: @tax_range.percentual
    fill_in "Tax", with: @tax_range.tax_id
    click_on "Create Tax range"

    assert_text "Tax range was successfully created"
    click_on "Back"
  end

  test "updating a Tax range" do
    visit tax_ranges_url
    click_on "Edit", match: :first

    fill_in "Minimum value", with: @tax_range.minimum_value
    fill_in "Percentual", with: @tax_range.percentual
    fill_in "Tax", with: @tax_range.tax_id
    click_on "Update Tax range"

    assert_text "Tax range was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax range" do
    visit tax_ranges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax range was successfully destroyed"
  end
end
