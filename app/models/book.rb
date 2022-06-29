class Book < ApplicationRecord
    has_one :category, :class_name => "Category"

    belongs_to :book_payment
    belongs_to :mentor
end
