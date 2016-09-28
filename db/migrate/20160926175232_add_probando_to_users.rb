class AddProbandoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :activo, :string, default: "no"
  end
end
