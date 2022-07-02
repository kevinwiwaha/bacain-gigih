class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :name, :books, :category, null: false, foreign_key: true
    end
  end
end
