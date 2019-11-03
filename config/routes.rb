Rails.application.routes.draw do
  root 'pages#landing'
  get 'pages/about_us'
  get 'pages/about_coffee'
  get 'pages/about_bcr'
  get 'pages/contact'
  post 'pages/contact', to: 'pages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
