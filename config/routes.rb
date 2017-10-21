Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "datasets#index"
  resources :communities, param: :identifier
  resources :datasets

  get 'communities/:identifier/members' => 'communities#members', as: 'community_members'
end
