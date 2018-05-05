Rails.application.routes.draw do
  devise_for :users
	root 'places#index'     # setting up the 'places' controller
	resources :places      # added to allow to get more URLs for a new place
end
