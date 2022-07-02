class CustomerUser < User
    has_many :book_payments
end