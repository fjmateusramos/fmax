class RemovecolumnToLeads < ActiveRecord::Migration[5.2]
  def change
  	remove_column :leads, :agendo_servico
  	add_column :leads, :agendo_serv, :string
  end
end
