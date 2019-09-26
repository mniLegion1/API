class CreateAlumnos < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.timestamp :edad
      t.integer :rut

      t.timestamps
    end
  end
end
