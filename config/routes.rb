Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/fields/city/:city' => "fields#city", as: :city
  resources :fields
  resources :bookings, except: :delete
end
