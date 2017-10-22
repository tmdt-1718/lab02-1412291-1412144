Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'messages/inbox', to: 'messages#show_inbox'
  get 'friendships/friends', to: 'friendships#show_friends'
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  resources :friendships

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
