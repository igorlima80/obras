require 'test_helper'

class DeductionRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deduction_range = deduction_ranges(:one)
  end

  test "should get index" do
    get deduction_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_deduction_range_url
    assert_response :success
  end

  test "should create deduction_range" do
    assert_difference('DeductionRange.count') do
      post deduction_ranges_url, params: { deduction_range: { deduction_id: @deduction_range.deduction_id, minimum_value: @deduction_range.minimum_value, percentual: @deduction_range.percentual } }
    end

    assert_redirected_to deduction_range_url(DeductionRange.last)
  end

  test "should show deduction_range" do
    get deduction_range_url(@deduction_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_deduction_range_url(@deduction_range)
    assert_response :success
  end

  test "should update deduction_range" do
    patch deduction_range_url(@deduction_range), params: { deduction_range: { deduction_id: @deduction_range.deduction_id, minimum_value: @deduction_range.minimum_value, percentual: @deduction_range.percentual } }
    assert_redirected_to deduction_range_url(@deduction_range)
  end

  test "should destroy deduction_range" do
    assert_difference('DeductionRange.count', -1) do
      delete deduction_range_url(@deduction_range)
    end

    assert_redirected_to deduction_ranges_url
  end
end
