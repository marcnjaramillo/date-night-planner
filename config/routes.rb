Rails.application.routes.draw do
  devise_for :user

  devise_scope :user do
    authenticated :user do
      root "welcome#index", as: "authenticated_root"
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get '/', to: 'welcome#index'
  post '/', to: 'welcome#index'

end
