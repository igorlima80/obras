require "application_system_test_case"

class WorkDiariesTest < ApplicationSystemTestCase
  setup do
    @work_diary = work_diaries(:one)
  end

  test "visiting the index" do
    visit work_diaries_url
    assert_selector "h1", text: "Work Diaries"
  end

  test "creating a Work diary" do
    visit work_diaries_url
    click_on "New Work Diary"

    fill_in "Activities description", with: @work_diary.activities_description
    fill_in "Construction", with: @work_diary.construction_id
    fill_in "End time", with: @work_diary.end_time
    fill_in "Stage", with: @work_diary.stage_id
    fill_in "Start time", with: @work_diary.start_time
    fill_in "Work date", with: @work_diary.work_date
    click_on "Create Work diary"

    assert_text "Work diary was successfully created"
    click_on "Back"
  end

  test "updating a Work diary" do
    visit work_diaries_url
    click_on "Edit", match: :first

    fill_in "Activities description", with: @work_diary.activities_description
    fill_in "Construction", with: @work_diary.construction_id
    fill_in "End time", with: @work_diary.end_time
    fill_in "Stage", with: @work_diary.stage_id
    fill_in "Start time", with: @work_diary.start_time
    fill_in "Work date", with: @work_diary.work_date
    click_on "Update Work diary"

    assert_text "Work diary was successfully updated"
    click_on "Back"
  end

  test "destroying a Work diary" do
    visit work_diaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work diary was successfully destroyed"
  end
end
