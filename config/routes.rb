Rails.application.routes.draw do
  root 'landing#index'
  devise_scope :user do
    get 'plans', to: 'devise/registrations#new'
    get 'new', to: 'devise/sessions#destroy'
  end
  devise_for :users
end
