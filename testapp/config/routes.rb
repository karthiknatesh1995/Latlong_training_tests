Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'experiment/new'
  resources :cform
  get 'experiment/Property'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
