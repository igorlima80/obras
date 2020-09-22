require "application_system_test_case"

class BenefitTypesTest < ApplicationSystemTestCase
  setup do
    @benefit_type = benefit_types(:one)
  end

  test "visiting the index" do
    visit benefit_types_url
    assert_selector "h1", text: "Benefit Types"
  end

  test "creating a Benefit type" do
    visit benefit_types_url
    click_on "New Benefit Type"

    fill_in "Name", with: @benefit_type.name
    click_on "Create Benefit type"

    assert_text "Benefit type was successfully created"
    click_on "Back"
  end

  test "updating a Benefit type" do
    visit benefit_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @benefit_type.name
    click_on "Update Benefit type"

    assert_text "Benefit type was successfully updated"
    click_on "Back"
  end

  test "destroying a Benefit type" do
    visit benefit_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Benefit type was successfully destroyed"
  end
end
