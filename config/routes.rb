Rails.application.routes.draw do
  get 'welcome/index'
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  devise_for :users, :skip => [:registrations]
  
  namespace :api do
    namespace :v1 do
      resources :coaches
      resources :students
      resources :slots
    end
  end 

  root 'welcome#index'
  get '/*path' => 'welcome#index'


end
