Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/update'
  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      get '/' => 'pages#home'
      # get "/about" => "pages#about"
      # get "/contact" => "pages#contact"
    end
  end

  authenticated :user do
    root 'jobs#index'
  
  resources :jobs

  get "jobs/:id/edit", to: "jobs#edit"
  patch "jobs/:id", to: "jobs#update"

  get "user/jobs/", to: 'jobs#posted', as: 'posted'

  resources :users,  only: [:index, :show, :update]


  end
end
