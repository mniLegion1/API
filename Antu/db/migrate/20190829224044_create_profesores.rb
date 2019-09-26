class CreateProfesores < ActiveRecord::Migration[6.0]
  def change
    create_table :profesores do |t|
      t.string :nombre
      t.timestamp :edad
      t.string :profesion
      t.text :descripcion

      t.timestamps
    end
  end
end
