class Lead < ApplicationRecord

	validates :nombres, :presence => true
	validates :apellidos, :presence => true
	validates :email, :presence => true

	validates_numericality_of :telefono, allow_nil: true
  validates_numericality_of :celular, allow_nil: true

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

	validate :telefono_or_celular
	validate :agendo_and_tiposervicio
	validate :agendo_and_hora_servicio
	validate :agendo_and_fecha_servicio

	private

	def telefono_or_celular
      if celular.blank? && telefono.blank?
        errors.add(:base, "Especifica por lo menos, el teléfono o celular")
      end
    end

    def agendo_and_tiposervicio
      if agendo_serv == 'Si' && tipo_servicio == "--"
        errors.add(:base, "Especifica el tipo de servicio")
      end
    end

    def agendo_and_hora_servicio
      if agendo_serv == 'Si' && hora_de_servicio == "--"
        errors.add(:base, "Especifica la hora de servicio")
      end
    end

    def agendo_and_fecha_servicio
      if agendo_serv == 'Si' && fecha_de_servicio.blank?
        errors.add(:base, "Especifica la fecha de servicio")
      end
    end

end

