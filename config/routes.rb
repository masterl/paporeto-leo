Paporeto::Application.routes.draw do
  devise_for :users

  resources :users

  resources :categories, path: 'categorias'

  resources :articles, path: 'artigos', path_names: {new: 'criar',edit: 'editar'}
  root 'articles#index'

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
