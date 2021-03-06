Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
      resources :timers, only: %i[index create]
      resources :records, only: %i[index create]
      namespace :auth do
        resources :sessions, only: %i[index]
      end
    end
  end

  root "test#index"
end
