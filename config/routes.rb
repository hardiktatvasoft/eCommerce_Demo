Rails.application.routes.draw do
 
  get 'cms_page/page'

	devise_for :users
	root :to => 'welcome#index'
  	devise_for :admin_users, ActiveAdmin::Devise.config
  	ActiveAdmin.routes(self)

	# route to cms pages
	resources :cms_pages, only: [:page]
	   get ":slug", :to => 'cms_page#page', :via => [:get, :post]

  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
