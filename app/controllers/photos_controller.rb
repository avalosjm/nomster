class PhotosController < ApplicationController
	Before_action :authenticate_user!

	def create
		@photo = Place.find(params[:place_id])
	end

	def photo_params
			params.require(:photo).permit(:caption, :picture)
	end
end
