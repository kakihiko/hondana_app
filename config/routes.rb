Rails.application.routes.draw do
  get 'auth/login' => 'auth#login'
  get 'auth/new' => 'auth#new'
  get 'auth/logout' => 'auth#logout'
  post 'auth/create' => 'auth#create'
  post 'auth/login_form' => 'auth#login_form'
  post 'request/setwish'  => 'request#setwish'
  post 'request/setadmit'  => 'request#setadmit'
  get 'request/wish'  => 'request#wish'
  get 'request/admit' => 'request#admit'
  get '/' => "home#top"
  get 'posts/index' => "posts#index"
  get 'posts/sample' => 'posts#sample'
  get 'posts/new'   => "posts#new"
  get 'posts/:id'   => "posts#bookcontent"
  post 'posts/create' => "posts#create"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
