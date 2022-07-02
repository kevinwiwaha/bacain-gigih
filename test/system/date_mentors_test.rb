require "application_system_test_case"

class DateMentorsTest < ApplicationSystemTestCase
  setup do
    @date_mentor = date_mentors(:one)
  end

  test "visiting the index" do
    visit date_mentors_url
    assert_selector "h1", text: "Date mentors"
  end

  test "should create date mentor" do
    visit date_mentors_url
    click_on "New date mentor"

    fill_in "Date", with: @date_mentor.date
    click_on "Create Date mentor"

    assert_text "Date mentor was successfully created"
    click_on "Back"
  end

  test "should update Date mentor" do
    visit date_mentor_url(@date_mentor)
    click_on "Edit this date mentor", match: :first

    fill_in "Date", with: @date_mentor.date
    click_on "Update Date mentor"

    assert_text "Date mentor was successfully updated"
    click_on "Back"
  end

  test "should destroy Date mentor" do
    visit date_mentor_url(@date_mentor)
    click_on "Destroy this date mentor", match: :first

    assert_text "Date mentor was successfully destroyed"
  end
end
