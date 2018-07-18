Rails.application.routes.draw do


  post "/user_token" => "user_token#create"
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do

    # get "/users" => "users#index"

    get "/users/:id" => "users#show"

    post "/users" => "users#create"

    patch "/users/:id" => "users#update"

    delete "/users/:id" => "users#destroy"



    get "/measurements/:id" => "measurements#show"

    post "/measurements" => "measurements#create"

    patch "/measurements/:id" => "measurements#update"

    delete "/measurements/:id" => "measurements#destroy"



    patch "/pattern/:id" => "pattern#update"
    
  end  

end
