<<<<<<< HEAD
class PaymentMentor < ApplicationRecord
end
=======
class PaymentMentor < ApplicationRecord
    has_one :mentor, :class_name => "Mentor"
    has_one :user, :class_name => "User"
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
