Rails.application.routes.draw do
<<<<<<< HEAD
  root 'static_pages#explore'
  
  get '1/dataset' => 'static_pages#dataset'
  get 'new_dataset' => 'static_pages#new_dataset'
  get 'update_dataset' => 'static_pages#update_dataset'
  get 'new_community' => 'static_pages#new_community'
  get '1' => 'static_pages#community_datasets'
=======
  devise_for :users
>>>>>>> b2991a2e572e87c807aa497d6dfe96cd75b6b089
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "datasets#index"
  resources :communities, param: :identifier
  resources :datasets
end
