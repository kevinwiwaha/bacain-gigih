class BookPayment < ApplicationRecord
    has_one :user, :class_name => "User"
    has_one :book, :class_name => "Book"
end
