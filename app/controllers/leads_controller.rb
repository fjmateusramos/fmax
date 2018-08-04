 class LeadsController < ApplicationController

 	before_action :set_image, only:[:show, :edit, :update, :destroy]

	def index
		@leads = Lead.all
	end

	def new
		@lead = Lead.new
	end

	def create
		#render plain: params[:lead].inspect 
		@lead = Lead.new leads_params
		
		if @lead.save
			return redirect_to '/'
		end

		render :new

	end

	def show
	end

	def edit
	end

	def update
		@lead.update leads_params
		redirect_to leads_path
	end

	def destroy
		@lead.destroy
		redirect_to leads_path
	end

end

private

	def leads_params
		params.require(:lead).permit(:nombres, :apellidos, :email ,:telefono, :celular, :direccion, :ciudad, :fecha_de_servicio, :hora_de_servicio, :observaciones, :estado, :agendo_serv, :tipo_servicio)
	end

	def set_image
		@lead = Lead.find params[:id]
	end

