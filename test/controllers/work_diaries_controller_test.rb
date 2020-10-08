require 'test_helper'

class WorkDiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_diary = work_diaries(:one)
  end

  test "should get index" do
    get work_diaries_url
    assert_response :success
  end

  test "should get new" do
    get new_work_diary_url
    assert_response :success
  end

  test "should create work_diary" do
    assert_difference('WorkDiary.count') do
      post work_diaries_url, params: { work_diary: { activities_description: @work_diary.activities_description, construction_id: @work_diary.construction_id, end_time: @work_diary.end_time, stage_id: @work_diary.stage_id, start_time: @work_diary.start_time, work_date: @work_diary.work_date } }
    end

    assert_redirected_to work_diary_url(WorkDiary.last)
  end

  test "should show work_diary" do
    get work_diary_url(@work_diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_diary_url(@work_diary)
    assert_response :success
  end

  test "should update work_diary" do
    patch work_diary_url(@work_diary), params: { work_diary: { activities_description: @work_diary.activities_description, construction_id: @work_diary.construction_id, end_time: @work_diary.end_time, stage_id: @work_diary.stage_id, start_time: @work_diary.start_time, work_date: @work_diary.work_date } }
    assert_redirected_to work_diary_url(@work_diary)
  end

  test "should destroy work_diary" do
    assert_difference('WorkDiary.count', -1) do
      delete work_diary_url(@work_diary)
    end

    assert_redirected_to work_diaries_url
  end
end
