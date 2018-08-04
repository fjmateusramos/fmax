class AddColumnToLeads < ActiveRecord::Migration[5.2]
  def change
  	add_column :leads, :observaciones, :string
  end
end
