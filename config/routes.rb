Rails.application.routes.draw do
  scope "(:locale)", locale: /en|jp/ do
    mount Ckeditor::Engine => '/ckeditor'
    resources :categories
    resources :items
    get 'sessions/new'
    root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'
    get  '/dashboard', to: 'static_pages#dashboard'
    get  '/search', to: 'static_pages#search'
    # get  '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    get '/auth/:provider/callback', to: 'sessions#create'

    get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "check_mail_address", to: "users#check_mail_address"
  resources :users

  get "/signup_success", to: "users#signup_success"
  get "/signup_fail", to: "users#signup_fail"
  resources :users do
    put :confirm_mail_address, on: :member
  end
    
  end
  
  resources :account_activations, only: [:edit]
  
  
end
