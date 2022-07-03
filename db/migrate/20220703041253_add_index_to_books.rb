class AddIndexToBooks < ActiveRecord::Migration[7.0]
  def change
    add_index :books, :user_id
  end
end
