json.extract! book, :id, :title, :description, :ebook, :audiobook, :price, :cover, :created_at, :updated_at
json.url book_url(book, format: :json)
