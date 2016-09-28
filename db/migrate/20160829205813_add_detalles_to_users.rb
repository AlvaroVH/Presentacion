class AddDetallesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nomusuario, :string
    add_column :users, :rut, :integer
  end
end
