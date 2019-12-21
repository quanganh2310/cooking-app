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
    get  '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    get '/auth/:provider/callback', to: 'sessions#create'
    resources :users
    resources :account_activations, only: [:edit]
  end
end
