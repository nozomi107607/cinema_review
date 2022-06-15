Rails.application.routes.draw do
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  root to: "public/homes#top"
  post '/guests/guest_sign_in', to: 'public/guests#new_guest'

  namespace :public do
    resources :users, only: [:show, :edit, :update]
    resources :films, only: []

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
