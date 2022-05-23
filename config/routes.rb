Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api/v1/campaigns#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :campaigns, except: [:destroy] do
        resources :investments, only: [:index, :create, :show]
      end
    end
  end
end