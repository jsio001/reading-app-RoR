class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.string :page
      t.text :description
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
