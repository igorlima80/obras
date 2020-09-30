require 'test_helper'

class SubStagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_stage = sub_stages(:one)
  end

  test "should get index" do
    get sub_stages_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_stage_url
    assert_response :success
  end

  test "should create sub_stage" do
    assert_difference('SubStage.count') do
      post sub_stages_url, params: { sub_stage: { name: @sub_stage.name, stage_id: @sub_stage.stage_id } }
    end

    assert_redirected_to sub_stage_url(SubStage.last)
  end

  test "should show sub_stage" do
    get sub_stage_url(@sub_stage)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_stage_url(@sub_stage)
    assert_response :success
  end

  test "should update sub_stage" do
    patch sub_stage_url(@sub_stage), params: { sub_stage: { name: @sub_stage.name, stage_id: @sub_stage.stage_id } }
    assert_redirected_to sub_stage_url(@sub_stage)
  end

  test "should destroy sub_stage" do
    assert_difference('SubStage.count', -1) do
      delete sub_stage_url(@sub_stage)
    end

    assert_redirected_to sub_stages_url
  end
end
