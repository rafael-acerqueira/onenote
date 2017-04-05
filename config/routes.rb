Rails.application.routes.draw do
  devise_for :users
  resources :notes, only: [:create, :update, :index, :show, :destroy]

  post '/users/:id/add_note/:note_id', to: 'users#add_note'
  delete '/users/:id/remove_note/:note_id', to: 'users#remove_note'  
end
