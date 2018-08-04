class ChangecolumnLeads < ActiveRecord::Migration[5.2]
  def change
  	change_column :leads, :telefono, :int8, :limit => 8
  	change_column :leads, :celular, :int8, :limit => 10
  end
end
