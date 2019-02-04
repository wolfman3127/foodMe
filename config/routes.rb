Rails.application.routes.draw do
  get 'choices/choose'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :lists  
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
