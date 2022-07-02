json.extract! book_payment, :id, :payment_proof, :is_valid_payment, :created_at, :updated_at
json.url book_payment_url(book_payment, format: :json)
