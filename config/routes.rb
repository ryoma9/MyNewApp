Rails.application.routes.draw do
  
  root "demograffics#index"
  resources :demograffics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
