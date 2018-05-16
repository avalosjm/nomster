Rails.application.routes.draw do
  devise_for :users
	root 'places#index'     # setting up the 'places' controller
	resources :places do      # added to allow to get more URLs for a new place
		resources :comments, only: :create
		resources :photos, only: :create # lesson 39
	end
end
