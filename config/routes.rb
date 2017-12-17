Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'registrations' }
  put '/users' => 'registrations#update', as: 'update_questions'
  get '/users/questions/:id', to: 'users#questions', as: 'questions'
  get '/users/matches/:id', to: 'users#matches', as: 'matches'
  resources :users
  
  root to: 'users#index'
end
