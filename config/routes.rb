Rails.application.routes.draw do
  
  resources :addemails
  resources :lists do  
  get "email","healthy", on: :collection
  post :sendma, on: :collection, as: :sendma   
  end
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  get 'choices/choose'  
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
