Rails.application.routes.draw do
  resources :versions
  devise_for :users
  resources :clients
  resources :manufacturers
  resources :prducts
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "projects#index"

  get '/archive' => "projects#archive"
  get '/projects/:id/archive' => 'projects#archiving', as: :archive_project
  get '/projects/:id/unarchive' => 'projects#unarchiving', as: :unarchive_project
  
end
