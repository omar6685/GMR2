Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_public#home"
  get "about", to: "static_public#about"
  get "contact", to: "static_public#contact"
  get "privacy", to: "static_public#privacy"
  get "terms", to: "static_public#terms"
  get "legal_notice", to: "static_public#legal_notice"
  resources :home_videos , only: [:new, :create, :show]
end
