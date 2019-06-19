Rails.application.routes.draw do
  get 'books/show'
  get 'books' =>'books#index'
  get 'books/new'
  get 'books/edit'
  root 'root#top'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'post'
  get 'books/:id/edit' => 'books#edit', as: 'edit_post'
  patch 'books/:id' => 'books#update', as: 'update_post'
  delete 'books/:id' => 'books#destroy', as: 'destroy_post'
  root "books#index"

  resources :books

end
