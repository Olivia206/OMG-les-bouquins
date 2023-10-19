class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :quote
      t.text :cover

      t.timestamps
    end
  end
end
