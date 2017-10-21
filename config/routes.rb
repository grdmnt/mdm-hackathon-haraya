Rails.application.routes.draw do
  root 'static_pages#explore'
  
  get '1/dataset' => 'static_pages#dataset'
  get 'new_dataset' => 'static_pages#new_dataset'
  get 'new_community' => 'static_pages#new_community'
  get '1' => 'static_pages#community_datasets'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
