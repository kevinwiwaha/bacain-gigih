class PaymentMentor < ApplicationRecord
    has_one :mentor, :class_name => "Mentor"
    has_one :user, :class_name => "User"
end
