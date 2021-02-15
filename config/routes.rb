Rails.application.routes.draw do
  get '/trainees', to: 'trainees#index'
  get '/trainees/new', to: 'trainees#new'
  post '/trainees', to: 'trainees#create'
  get '/trainees/:id', to: 'trainees#show', as: 'trainee'
  get '/trainees/:id/edit', to: 'trainees#edit', as: 'edit_trainee'
  patch '/trainees/:id', to: 'trainees#update'
  delete '/trainees/:id', to: 'trainees#delete'
  #resources :trainees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
