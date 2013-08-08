Paporeto::Application.routes.draw do
  resources :reader_articles, only: [:new, :create, :show]

  resources :articles, only: [:index,:show]

  devise_for :users

  namespace :admin do
    resources :users

    resources :categories, path: 'categorias'

    resources :articles, path: 'artigos', path_names: {new: 'criar',edit: 'editar'}
  end

  get 'admin' => 'admin/articles#index'

  root 'home#index'

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
