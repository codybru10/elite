Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  root to: "landing#index"

  resources :products do
    resources :reviews
  end
end
