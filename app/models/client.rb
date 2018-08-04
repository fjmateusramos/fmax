class Client < ApplicationRecord
	
	validates :razon_social, :presence => true
	validates :tipo_cliente, :presence => true
	validates :contacto_principal, :presence => true
	validates :direccion_principal, :presence => true
	validates :nit, :presence => true

	validates :telefono_empresa, presence: true, unless: ->(client){client.celular_empresa.present?}
	validates :celular_empresa, presence: true, unless: ->(client){client.telefono_empresa.present?}
	
	validates :telefono_contacto_principal, presence: true, unless: ->(client){client.celular_contacto_principal.present?}
	validates :celular_contacto_principal, presence: true, unless: ->(client){client.telefono_contacto_principal.present?}

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

	validates :ciudad, :presence => true
	validates :pais, :presence => true

end
