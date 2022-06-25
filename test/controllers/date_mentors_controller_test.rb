require "test_helper"

class DateMentorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_mentor = date_mentors(:one)
  end

  test "should get index" do
    get date_mentors_url
    assert_response :success
  end

  test "should get new" do
    get new_date_mentor_url
    assert_response :success
  end

  test "should create date_mentor" do
    assert_difference("DateMentor.count") do
      post date_mentors_url, params: { date_mentor: { date: @date_mentor.date } }
    end

    assert_redirected_to date_mentor_url(DateMentor.last)
  end

  test "should show date_mentor" do
    get date_mentor_url(@date_mentor)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_mentor_url(@date_mentor)
    assert_response :success
  end

  test "should update date_mentor" do
    patch date_mentor_url(@date_mentor), params: { date_mentor: { date: @date_mentor.date } }
    assert_redirected_to date_mentor_url(@date_mentor)
  end

  test "should destroy date_mentor" do
    assert_difference("DateMentor.count", -1) do
      delete date_mentor_url(@date_mentor)
    end

    assert_redirected_to date_mentors_url
  end
end
