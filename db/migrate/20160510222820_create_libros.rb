class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.integer :isbn
      t.string :titulo
      t.string :descripcion
      t.integer :stock
      t.integer :costo
      t.string :editorial
      t.string :autor
      t.string :clasificacion

      t.timestamps null: false
    end
  end
end
