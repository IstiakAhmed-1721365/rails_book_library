Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
    resources :books
 #delete '/books/:id', to: 'book#destroy' 
    root to: "books#index"

end
