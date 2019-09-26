class CreateAsignaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :asignaturas do |t|
      t.references :profesores
      t.references :alumnos

      t.timestamps
    end
  end
end
