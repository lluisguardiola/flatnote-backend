Rails.application.routes.draw do
  resources :users [except: :index]
  resources :notes [except: :index]
  resources :tags [except: :index]
end
