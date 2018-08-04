class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :nombres
      t.string :apellidos
      t.string :email
      t.integer :telefono
      t.integer :celular
      t.string :direccion
      t.string :ciudad
      t.date :fecha_de_servicio
      t.string :hora_de_servicio

      t.timestamps
    end
  end
end
