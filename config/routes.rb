Podmaker2Bb::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  scope :api do
    match '/students', to: 'api#students', via: 'get', as: 'api_students'
  end
end
