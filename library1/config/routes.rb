Rails.application.routes.draw do
  get 'books/index'
  resources  :articles 
  resource :search
  
 root 'books#index'
 post 'articles/new' => 'articles#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
