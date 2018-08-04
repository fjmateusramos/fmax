class AddColumnsToClient < ActiveRecord::Migration[5.2]
  def change
  	add_column :clients, :razon_Social, :string
  	add_column :clients, :tipo_cliente, :string
  	add_column :clients, :contacto_principal, :string
  	add_column :clients, :nit, :string
  	add_column :clients, :direccion_principal, :string
  	add_column :clients, :telefono_empresa, :string
  	add_column :clients, :celular_empresa, :string
  	add_column :clients, :telefono_contacto_principal,:int8, :limit => 10
  	add_column :clients, :celular_contacto_principal, :int8, :limit => 10
  	add_column :clients, :email_contacto_principal, :string
  	add_column :clients, :ciudad, :string
  	add_column :clients, :pais, :string
  end
end
