require "application_system_test_case"

class BookPaymentsTest < ApplicationSystemTestCase
  setup do
    @book_payment = book_payments(:one)
  end

  test "visiting the index" do
    visit book_payments_url
    assert_selector "h1", text: "Book payments"
  end

  test "should create book payment" do
    visit book_payments_url
    click_on "New book payment"

    check "Is valid payment" if @book_payment.is_valid_payment
    fill_in "Payment proof", with: @book_payment.payment_proof
    click_on "Create Book payment"

    assert_text "Book payment was successfully created"
    click_on "Back"
  end

  test "should update Book payment" do
    visit book_payment_url(@book_payment)
    click_on "Edit this book payment", match: :first

    check "Is valid payment" if @book_payment.is_valid_payment
    fill_in "Payment proof", with: @book_payment.payment_proof
    click_on "Update Book payment"

    assert_text "Book payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Book payment" do
    visit book_payment_url(@book_payment)
    click_on "Destroy this book payment", match: :first

    assert_text "Book payment was successfully destroyed"
  end
end
