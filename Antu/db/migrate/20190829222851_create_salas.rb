class CreateSalas < ActiveRecord::Migration[6.0]
  def change
    create_table :salas do |t|
      t.string :profesores
      t.string :nombre
      t.timestamp :edad
      t.string :profesion
      t.text :descripcion

      t.timestamps
    end
  end
end
