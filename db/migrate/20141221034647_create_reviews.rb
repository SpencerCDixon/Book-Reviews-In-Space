class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :book_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
