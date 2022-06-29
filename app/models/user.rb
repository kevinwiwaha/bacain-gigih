class User < ApplicationRecord
    has_one :role, :class_name => "Role"
    
    belongs_to :mentor
    belongs_to :book_payment
    belongs_to :payment_mentor
end
