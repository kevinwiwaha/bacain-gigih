class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :ebook
      t.string :audiobook
      t.float :price
      t.string :cover
      t.integer "category_id", null: false

      t.timestamps
    end
  add_foreign_key :books, :categories
  end
end
