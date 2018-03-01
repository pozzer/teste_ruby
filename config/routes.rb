Rails.application.routes.draw do

  apipie
  namespace :api do
    namespace :v1 do
      resources :transactions, only: :index
    end
  end


  #root to: "apipie/apipies#index"
end
