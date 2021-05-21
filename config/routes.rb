Rails.application.routes.draw do
  resources :dogs
  resources :employees

  post '/dogs/new', to: 'dogs#create'
  post '/employees/new', to: 'employees#create'
  post '/employees/:id/edit', to: 'employees#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
