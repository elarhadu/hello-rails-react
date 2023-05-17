Rails.application.routes.draw do
  root 'root#index'
  namespace :api do
    namespace :v1 do
      get 'greetings/random', to: 'greetings#random'
    end
  end
  get 'root/index'
end
