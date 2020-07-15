Rails.application.routes.draw do
  root 'application#hello'
  get 'about', to: 'pages#about'
  resources :articles
end
