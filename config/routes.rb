Rails.application.routes.draw do

namespace :api do

  namespace :v2 do
  get "/patients", to: 'patients#index'
  post"/patients", to: 'patients#create'
  get "/patients:id", to:'patients#show'
  patch "/patients/:id", to:'patients#update'
  delete "/patients/:id", to:'patients#destroy'
  end
end
end