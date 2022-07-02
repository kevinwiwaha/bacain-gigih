<<<<<<< HEAD
class Category < ApplicationRecord
    validates :category_name, presence: true, uniqueness: true
    has_many :books
end
=======
class Category < ApplicationRecord
    belongs_to :book
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
