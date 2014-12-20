class AddColumnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :user_id, :integer, null: false
  end
end
