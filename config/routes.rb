Rails.application.routes.draw do
 resources :books
 #delete '/books/:id', to: 'book#destroy' 
 root to: "books#index"
end
