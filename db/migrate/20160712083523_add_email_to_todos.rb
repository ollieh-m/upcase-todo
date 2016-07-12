class AddEmailToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :email, :string
    add_index :todos, :email
  end
end
