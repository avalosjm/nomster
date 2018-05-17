class PhotosController < ApplicationController
	before_action :authenticate_user!

	def create
		puts "inside photos_controller#create params", params
		@place = Place.find(params[:place_id])
		@photo = @place.photos.create(photo_params)
		if @photo.valid?
			redirect_to place_path(@place)
		else
			redirect_to place_path(@place)
		end
	end

	private

	def photo_params
			params.require(:photo).permit(:caption, :picture)
	end
end
