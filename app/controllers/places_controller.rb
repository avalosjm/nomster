class PlacesController < ApplicationController

	def index
		@places = Place.all
	end

	def new  # thi is the action in that places the form on a page called 'new'
		@place = Place.new
	end
end
