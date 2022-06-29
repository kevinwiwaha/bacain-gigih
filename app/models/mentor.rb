class Mentor < ApplicationRecord
    has_one :book, :class_name => "Book"
    has_one :user, :class_name => "User"
    
    belongs_to :date_mentor
    belongs_to :payment_mentor
end
