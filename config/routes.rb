Rails.application.routes.draw do
<<<<<<< HEAD
  root 'static_pages#explore'
  
  get '1/dataset' => 'static_pages#dataset'
  get 'new_dataset' => 'static_pages#new_dataset'
  get 'new_community' => 'static_pages#new_community'
  get '1' => 'static_pages#community_datasets'
=======
  root 'static_pages#login'

  get 'dashboard' => 'static_pages#dashboard'

  get 'dataset' => 'static_pages#dataset'
>>>>>>> 64f949b4232c000838de7d5b1381a6de7258d0b6
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
