class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books, options: 'DEFAULT CHARSET=UTF8' do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :filename, null: false
      t.string :location, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :books, :user_id
    add_index :books, :title
    add_index :books, :author
    add_foreign_key :books, :users
  end
end
