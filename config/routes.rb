Rails.application.routes.draw do
  resources :patients do 
    resources :records
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "patients#index"
end
