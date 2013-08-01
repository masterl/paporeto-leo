Paporeto::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users

    resources :categories, path: 'categorias'

    resources :articles, path: 'artigos', path_names: {new: 'criar',edit: 'editar'}
  end
  root 'admin/articles#index'

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
