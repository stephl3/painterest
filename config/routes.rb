Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    ### issue???
    resources :users, only: [:create, :index, :show, :update]
    resource :session, only: [:create, :destroy]
    resources :boards, only: [:create, :index, :show, :update, :destroy]
    resources :pins, only: [:create, :index, :show, :update, :destroy]
    resources :boards_pins, only: [:create, :index, :destroy]
  end

  root to: "static_pages#root"
end
