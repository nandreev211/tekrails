TekRails::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => 'home#index'
  match '/' => 'home#index'
  match '/works' => 'works#index'
  match '/services' => 'works#services'
  match '/process' => 'works#proces'
  match '/team' => 'works#team'
  match '/open-src' => 'works#open_source'
  match '/contact' => 'works#contact'
  match '/messages' => 'messages#create', :as => :message

  resources :messages, only: [:create]
end