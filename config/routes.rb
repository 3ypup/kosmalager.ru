Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/' => "main#index"

resources :main
resources :posts
resources :albums do
  resources :pics
end
resources :events

end
