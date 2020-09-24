require "application_system_test_case"

class DeductionRangesTest < ApplicationSystemTestCase
  setup do
    @deduction_range = deduction_ranges(:one)
  end

  test "visiting the index" do
    visit deduction_ranges_url
    assert_selector "h1", text: "Deduction Ranges"
  end

  test "creating a Deduction range" do
    visit deduction_ranges_url
    click_on "New Deduction Range"

    fill_in "Deduction", with: @deduction_range.deduction_id
    fill_in "Minimum value", with: @deduction_range.minimum_value
    fill_in "Percentual", with: @deduction_range.percentual
    click_on "Create Deduction range"

    assert_text "Deduction range was successfully created"
    click_on "Back"
  end

  test "updating a Deduction range" do
    visit deduction_ranges_url
    click_on "Edit", match: :first

    fill_in "Deduction", with: @deduction_range.deduction_id
    fill_in "Minimum value", with: @deduction_range.minimum_value
    fill_in "Percentual", with: @deduction_range.percentual
    click_on "Update Deduction range"

    assert_text "Deduction range was successfully updated"
    click_on "Back"
  end

  test "destroying a Deduction range" do
    visit deduction_ranges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deduction range was successfully destroyed"
  end
end
