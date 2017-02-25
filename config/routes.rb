Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'

  root to: 'pages#home'
  get 'about', to: 'pages#about'
end
