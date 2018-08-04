class CitiesController < ApplicationController
	def new
	end

	def create
		#render plain: params[:lead].inspect 
		@city = City.new cities_params
		@city.save

		redirect_to '/'
	end

end

private

	def cities_params
		params.require(:city).permit(:ciudad, :pais)
	end
	

