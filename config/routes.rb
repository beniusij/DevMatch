Rails.application.routes.draw do
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'

  root to: 'pages#home'
  get 'about', to: 'pages#about'
end
