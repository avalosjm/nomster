class PlacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update]

	def index
		@places = Place.all
	end

	def new  # this is the action in that places the form on a page called 'new'
		@place = Place.new
	end

	def create
		current_user.places.create(place_params)
		redirect_to root_path
	end

	def show
		@place = Place.find(params[:id])
	end

	def edit
		@place = Place.find(params[:id])
		if @place.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
	end

	def update
		@place = Place.find(params[:id])
		if @place.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
  
		@place.update_attributes(place_params)
		redirect_to root_path
	end

	def destroy
		@place = Place.find(params[:id])
		if @place.user != current_user
				return render plain: 'Not Allowed', status: :forbidden
		end
		
		@place.destroy
		redirect_to root_path
	end
			
	private

	def place_params
		params.require(:place).permit(:name, :desciption, :address)
	end


end