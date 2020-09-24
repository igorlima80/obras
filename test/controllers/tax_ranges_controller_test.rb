require 'test_helper'

class TaxRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_range = tax_ranges(:one)
  end

  test "should get index" do
    get tax_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_range_url
    assert_response :success
  end

  test "should create tax_range" do
    assert_difference('TaxRange.count') do
      post tax_ranges_url, params: { tax_range: { minimum_value: @tax_range.minimum_value, percentual: @tax_range.percentual, tax_id: @tax_range.tax_id } }
    end

    assert_redirected_to tax_range_url(TaxRange.last)
  end

  test "should show tax_range" do
    get tax_range_url(@tax_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_range_url(@tax_range)
    assert_response :success
  end

  test "should update tax_range" do
    patch tax_range_url(@tax_range), params: { tax_range: { minimum_value: @tax_range.minimum_value, percentual: @tax_range.percentual, tax_id: @tax_range.tax_id } }
    assert_redirected_to tax_range_url(@tax_range)
  end

  test "should destroy tax_range" do
    assert_difference('TaxRange.count', -1) do
      delete tax_range_url(@tax_range)
    end

    assert_redirected_to tax_ranges_url
  end
end
