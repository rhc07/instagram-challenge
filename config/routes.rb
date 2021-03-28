Rails.application.routes.draw do
  root "posts#index"

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"
  
  get "/posts", to: "posts#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
