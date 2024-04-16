Rails.application.routes.draw do
#  # Define routes within the default locale scope
#  scope "(:locale)", locale: /en|ar/ do
#    resources :organizations
#    resources :information
#    resources :histories
#    resources :employees
#    resources :highlights
#    resources :features
#    resources :products
#    resources :socials
#    resources :logos
#    resources :legal_notices
#    resources :terms
#    resources :privacies
#    resources :contacts
#    resources :abouts
#    resources :home_sites
#    resources :home_boxes
#    devise_for :users
#    devise_scope :user do
#      get '/users/sign_out' => 'devise/sessions#destroy'
#    end
#
#    # Define your application routes here
#
#    # Defines the root path route ("/")
#    root "static_public#home"
#    get "about_us", to: "static_public#about"
#    get "contact_us", to: "static_public#contact"
#    get "privacy_static", to: "static_public#privacy"
#    get "terms_and_conditions", to: "static_public#terms"
#    get "legal_notice_static", to: "static_public#legal_notice"
#    get "dashboard", to: "static_public#dashboard"
#    get "general_pages", to: "static_public#general_pages"
#    resources :home_videos, only: [:new, :create, :show]
#    resources :home_tests
#  end
end
