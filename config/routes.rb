Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/authors'

  get 'pages/titles'

  get 'pages/subjects'

  root to: 'pages#home'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
