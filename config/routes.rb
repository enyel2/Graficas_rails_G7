Rails.application.routes.draw do
  devise_for :users
  get 'dashboards/index'

  resources :products do
  	resources :orders, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #se va a cambiar la ruta que tenemos por:
  #root 'products#index'

  root 'dashboards#index'
  
end
