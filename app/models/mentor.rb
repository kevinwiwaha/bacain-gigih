<<<<<<< HEAD
class Mentor < ApplicationRecord
end
=======
class Mentor < ApplicationRecord
    has_one :book, :class_name => "Book"
    has_one :user, :class_name => "User"
    
    belongs_to :date_mentor
    belongs_to :payment_mentor
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
