Rails.application.routes.draw do
  get 'search/index'

  resources :event_students
  resources :events
  resources :students

  get '/' => 'events#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
