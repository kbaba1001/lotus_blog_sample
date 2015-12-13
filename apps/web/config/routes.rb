# Configure your routes here
# See: http://www.rubydoc.info/gems/lotus-router/#Usage

get '/', to: 'users#login_form'

get 'dashboard', to: 'dashboard#index'
resources :users, only: %i() do
  collection do
    post 'login'
  end
end
