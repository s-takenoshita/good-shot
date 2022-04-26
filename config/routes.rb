Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'top' => 'homes#top'
  resources :tournaments, only: [:new, :create, :index, :show, :edit, :update, :destroy]
end
