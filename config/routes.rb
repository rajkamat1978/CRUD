Rails.application.routes.draw do
  resources :comments
  resources :events
  resources :books
  resources :authors
  get "rajesh", :to => "home#index"
  get "rajesh1", :to => "home#index1"
  post "user", :to => "home#user"
  get "update", :to => "home#update"
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
