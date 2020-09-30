require "application_system_test_case"

class PurchaseItemsTest < ApplicationSystemTestCase
  setup do
    @purchase_item = purchase_items(:one)
  end

  test "visiting the index" do
    visit purchase_items_url
    assert_selector "h1", text: "Purchase Items"
  end

  test "creating a Purchase item" do
    visit purchase_items_url
    click_on "New Purchase Item"

    fill_in "Amount", with: @purchase_item.amount
    fill_in "Material", with: @purchase_item.material_id
    fill_in "Purchase", with: @purchase_item.purchase_id
    fill_in "Total price", with: @purchase_item.total_price
    fill_in "Unity price", with: @purchase_item.unity_price
    click_on "Create Purchase item"

    assert_text "Purchase item was successfully created"
    click_on "Back"
  end

  test "updating a Purchase item" do
    visit purchase_items_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @purchase_item.amount
    fill_in "Material", with: @purchase_item.material_id
    fill_in "Purchase", with: @purchase_item.purchase_id
    fill_in "Total price", with: @purchase_item.total_price
    fill_in "Unity price", with: @purchase_item.unity_price
    click_on "Update Purchase item"

    assert_text "Purchase item was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase item" do
    visit purchase_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase item was successfully destroyed"
  end
end
