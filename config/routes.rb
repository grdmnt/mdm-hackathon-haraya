Rails.application.routes.draw do
  get 'profiles/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#explore"
  resources :communities, param: :identifier
  resources :datasets

  get 'profile' => 'profiles#show', as: 'show_profile'
  get 'communities/:identifier/join' => 'communities#join', as: 'join_community'

  get 'communities/:identifier/members' => 'communities#members', as: 'community_members'
end
