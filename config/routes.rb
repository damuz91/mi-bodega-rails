Rails.application.routes.draw do
  root "home#dashboard"
  resources :products do
    member do
      get :new_movement
      post :create_movement
    end
  end

end
