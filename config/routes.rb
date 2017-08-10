Rails.application.routes.draw do
  root "home#index"

  resources :rewards do
    collection do
      get :search
      get :search_rewards
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
