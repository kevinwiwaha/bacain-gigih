<<<<<<< HEAD
class BookPayment < ApplicationRecord
end
=======
class BookPayment < ApplicationRecord
    has_one :user, :class_name => "User"
    has_one :book, :class_name => "Book"
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
