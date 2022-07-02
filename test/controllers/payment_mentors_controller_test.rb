require "test_helper"

class PaymentMentorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_mentor = payment_mentors(:one)
  end

  test "should get index" do
    get payment_mentors_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_mentor_url
    assert_response :success
  end

  test "should create payment_mentor" do
    assert_difference("PaymentMentor.count") do
      post payment_mentors_url, params: { payment_mentor: { is_valid_payment: @payment_mentor.is_valid_payment, payment_proof: @payment_mentor.payment_proof } }
    end

    assert_redirected_to payment_mentor_url(PaymentMentor.last)
  end

  test "should show payment_mentor" do
    get payment_mentor_url(@payment_mentor)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_mentor_url(@payment_mentor)
    assert_response :success
  end

  test "should update payment_mentor" do
    patch payment_mentor_url(@payment_mentor), params: { payment_mentor: { is_valid_payment: @payment_mentor.is_valid_payment, payment_proof: @payment_mentor.payment_proof } }
    assert_redirected_to payment_mentor_url(@payment_mentor)
  end

  test "should destroy payment_mentor" do
    assert_difference("PaymentMentor.count", -1) do
      delete payment_mentor_url(@payment_mentor)
    end

    assert_redirected_to payment_mentors_url
  end
end
