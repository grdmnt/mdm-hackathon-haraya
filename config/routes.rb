Rails.application.routes.draw do
  root 'static_pages#login'

  get 'dashboard' => 'static_pages#dashboard'

  get 'dataset' => 'static_pages#dataset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
