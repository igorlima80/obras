require "application_system_test_case"

class MaterialCategoriesTest < ApplicationSystemTestCase
  setup do
    @material_category = material_categories(:one)
  end

  test "visiting the index" do
    visit material_categories_url
    assert_selector "h1", text: "Material Categories"
  end

  test "creating a Material category" do
    visit material_categories_url
    click_on "New Material Category"

    fill_in "Name", with: @material_category.name
    click_on "Create Material category"

    assert_text "Material category was successfully created"
    click_on "Back"
  end

  test "updating a Material category" do
    visit material_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @material_category.name
    click_on "Update Material category"

    assert_text "Material category was successfully updated"
    click_on "Back"
  end

  test "destroying a Material category" do
    visit material_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material category was successfully destroyed"
  end
end
