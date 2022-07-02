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

