Rails.application.routes.draw do
  get 'cart/index'

  get 'cart/show'

	root :to => 'home#index'
	get 'home/index'
	get 'product/index'
	resources :product

	# resources:product
	# get '/product/:id', to: 'product#index'

	devise_for :users
	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)

	# route to cms pages
	resources :cms_pages, only: [:page]
	   get ":slug", :to => 'cms_page#page', :via => [:get, :post]

	# resources :cart do
	# 	collection do
	# 		post :add_to_cart
	# 	end
	# end

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
