<<<<<<< HEAD
class Book < ApplicationRecord
    validates :category_id, presence: true
    belongs_to :category

    has_one_attached :ebook
    has_one_attached :audiobook
    has_one_attached :cover


    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :ebook, presence: true
    validates :audiobook, presence: true
    validates :price, presence: true
    validates :cover, presence: true

end

=======
class Book < ApplicationRecord
    has_one :category, :class_name => "Category"

    belongs_to :book_payment
    belongs_to :mentor
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
