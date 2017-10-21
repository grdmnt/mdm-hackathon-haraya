Rails.application.routes.draw do
  root 'static_pages#explore'
  
  get 'dataset' => 'static_pages#dataset'
  get 'new_dataset' => 'static_pages#new_dataset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
