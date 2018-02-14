Rails.application.routes.draw do
  get '/investing'   => 'investing#investing'

  get "/" => "home#index", :as => "root"


  resources :messages
  get '/', to: 'messages#new', as: '/'
  post '/', to: 'messages#create'
end
