Rails.application.routes.draw do
  resources :athletes
  root to: "home#index"
end
