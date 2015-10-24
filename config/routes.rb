Rails.application.routes.draw do
  resources :labs
  
  get 'home/index'


  root 'home#index'

end
