Rails.application.routes.draw do
  devise_scope :user do
    authenticated :user do
      root "welcome#index", as: "authenticated_root"
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get '/search', to: 'events#new'
  post '/search', to: 'events#show'

end
