require 'test_helper'

class PurchaseItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_item = purchase_items(:one)
  end

  test "should get index" do
    get purchase_items_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_item_url
    assert_response :success
  end

  test "should create purchase_item" do
    assert_difference('PurchaseItem.count') do
      post purchase_items_url, params: { purchase_item: { amount: @purchase_item.amount, material_id: @purchase_item.material_id, purchase_id: @purchase_item.purchase_id, total_price: @purchase_item.total_price, unity_price: @purchase_item.unity_price } }
    end

    assert_redirected_to purchase_item_url(PurchaseItem.last)
  end

  test "should show purchase_item" do
    get purchase_item_url(@purchase_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_item_url(@purchase_item)
    assert_response :success
  end

  test "should update purchase_item" do
    patch purchase_item_url(@purchase_item), params: { purchase_item: { amount: @purchase_item.amount, material_id: @purchase_item.material_id, purchase_id: @purchase_item.purchase_id, total_price: @purchase_item.total_price, unity_price: @purchase_item.unity_price } }
    assert_redirected_to purchase_item_url(@purchase_item)
  end

  test "should destroy purchase_item" do
    assert_difference('PurchaseItem.count', -1) do
      delete purchase_item_url(@purchase_item)
    end

    assert_redirected_to purchase_items_url
  end
end
