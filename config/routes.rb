Rails.application.routes.draw do
  resources :contacts

  root to: 'pages#home'
  get 'about', to: 'pages#about'
end
