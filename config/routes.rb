Rails.application.routes.draw do
  # get 'homes/welcome'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#welcome"
end
