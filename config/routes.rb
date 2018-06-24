Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root 'pages#index', as: 'home'
  
  get 'about' => 'pages#about', as: 'about' # <-- That is an Alias
  get 'contact' => 'pages#contact', as: 'contact'
  get 'services' => 'pages#services', as: 'services'
  
end
