Rails.application.routes.draw do
  get 'job_app/index'
  get 'job_app/show'
  get 'job_app/new'
  get 'job_app/create'
  get 'job_app/update'
  get 'job_app/destroy'
  get 'saved_jobs/index'
  get 'saved_jobs/new'
  get 'saved_jobs/create'
  get 'saved_jobs/destroy'
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
  
  resources :jobs do  
    resources :user_jobs
  end

  get "jobs/:id/edit", to: "jobs#edit"
  patch "jobs/:id", to: "jobs#update"

  get "user/jobs/", to: 'jobs#posted', as: 'posted'

  resources :users,  only: [:index, :show, :update]

  resources :jobapps, only: [] do
    get :accept, on: :member
  end

  get '/user/:id/savedjobs', to: 'user_jobs#usersaved', as: :usersaved

  get '/user/:id/applicants', to: 'jobapps#applicant', as: :applicant

  get '/user/:id/applicants', to: 'jobapps#accepted', as: :accepted

  # get '/jobapps/:id/accept', to: 'jobapps#accept', as: :accept

  resources :jobs do  
    resources :jobapps
  end



  end
end
