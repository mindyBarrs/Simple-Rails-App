Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/show'
  get 'posts/destroy'
  root 'pages#index', as: 'home'
  
  get 'about' => 'pages#about', as: 'about' # <-- That is an Alias
  get 'contact' => 'pages#contact', as: 'contact'
  get 'services' => 'pages#services', as: 'services'
end
