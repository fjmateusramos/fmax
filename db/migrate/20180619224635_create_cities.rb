class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :ciudad
      t.string :pais

      t.timestamps
    end
  end
end
