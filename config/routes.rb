Rails.application.routes.draw do
  resources :extintors
  devise_for :admins
  get 'admin' => 'admin#home'
  devise_for :users
  resources :leads
  resources :cities
  #devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'creatives/index'
root 'creatives#index'
get 'system/index'
end
