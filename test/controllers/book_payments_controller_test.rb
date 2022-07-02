require "test_helper"

class BookPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_payment = book_payments(:one)
  end

  test "should get index" do
    get book_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_book_payment_url
    assert_response :success
  end

  test "should create book_payment" do
    assert_difference("BookPayment.count") do
      post book_payments_url, params: { book_payment: { is_valid_payment: @book_payment.is_valid_payment, payment_proof: @book_payment.payment_proof } }
    end

    assert_redirected_to book_payment_url(BookPayment.last)
  end

  test "should show book_payment" do
    get book_payment_url(@book_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_payment_url(@book_payment)
    assert_response :success
  end

  test "should update book_payment" do
    patch book_payment_url(@book_payment), params: { book_payment: { is_valid_payment: @book_payment.is_valid_payment, payment_proof: @book_payment.payment_proof } }
    assert_redirected_to book_payment_url(@book_payment)
  end

  test "should destroy book_payment" do
    assert_difference("BookPayment.count", -1) do
      delete book_payment_url(@book_payment)
    end

    assert_redirected_to book_payments_url
  end
end
