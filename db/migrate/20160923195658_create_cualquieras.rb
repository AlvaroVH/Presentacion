class CreateCualquieras < ActiveRecord::Migration
  def change
    create_table :cualquieras do |t|
      t.string :columna1

      t.timestamps null: false
    end
  end
end
