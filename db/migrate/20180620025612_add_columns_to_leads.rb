class AddColumnsToLeads < ActiveRecord::Migration[5.2]
  def change
  	add_column :leads, :estado, :string
  	add_column :leads, :agendo_servico, :boolean
  	add_column :leads, :tipo_servicio, :string
  end
end
