class AddBookToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_reference :authors, :book, null: true, foreign_key: true
  end
end
