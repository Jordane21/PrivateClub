Rails.application.routes.draw do
  get 'page_club/show'
  get 'home/index'
  root to: "home#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
