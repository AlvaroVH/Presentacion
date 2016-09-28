class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cargo, :string
    add_column :users, :estado, :integer, default: "0"
  end
end
