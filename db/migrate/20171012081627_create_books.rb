class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :author, null: false
      t.string :name, null: false
      t.boolean :read, null: false
      t.string :status
      t.timestamps
    end
  end
end
