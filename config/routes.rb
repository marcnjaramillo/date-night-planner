Rails.application.routes.draw do


  devise_for :user

  devise_scope :user do
    authenticated :user do
      root "welcome#index", as: "authenticated_root"
      resources :events, only: [:create]
    end

    unauthenticated do
      root 'welcome#homepage', as: :unauthenticated_root
    end
  end

  resources :events

  get '/', to: 'welcome#index'
  post '/', to: 'welcome#index'

end
