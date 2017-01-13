Rails.application.routes.draw do
  get 'books/index'
  post 'articles' => 'articles#search'
  post 'articles/new' => 'articles#create'
 
  resources  :articles 
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
