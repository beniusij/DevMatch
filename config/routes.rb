Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
  end
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'

  get 'about', to: 'pages#about'
end
