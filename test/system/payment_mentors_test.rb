require "application_system_test_case"

class PaymentMentorsTest < ApplicationSystemTestCase
  setup do
    @payment_mentor = payment_mentors(:one)
  end

  test "visiting the index" do
    visit payment_mentors_url
    assert_selector "h1", text: "Payment mentors"
  end

  test "should create payment mentor" do
    visit payment_mentors_url
    click_on "New payment mentor"

    check "Is valid payment" if @payment_mentor.is_valid_payment
    fill_in "Payment proof", with: @payment_mentor.payment_proof
    click_on "Create Payment mentor"

    assert_text "Payment mentor was successfully created"
    click_on "Back"
  end

  test "should update Payment mentor" do
    visit payment_mentor_url(@payment_mentor)
    click_on "Edit this payment mentor", match: :first

    check "Is valid payment" if @payment_mentor.is_valid_payment
    fill_in "Payment proof", with: @payment_mentor.payment_proof
    click_on "Update Payment mentor"

    assert_text "Payment mentor was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment mentor" do
    visit payment_mentor_url(@payment_mentor)
    click_on "Destroy this payment mentor", match: :first

    assert_text "Payment mentor was successfully destroyed"
  end
end
