class PlacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@places = Place.all
	end

	def new  # thi is the action in that places the form on a page called 'new'
		@place = Place.new
	end

	def create
		current_user.places.create(place_params)
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :desciption, :address)
	end


end