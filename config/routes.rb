Paporeto::Application.routes.draw do
  resources :reader_articles, only: [:new, :create, :show]

  devise_for :users

  namespace :admin do
    resources :users

    resources :categories, path: 'categorias'

    resources :articles, path: 'artigos', path_names: {new: 'criar',edit: 'editar'}
  end

  get 'admin' => 'admin/articles#index'  

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox

  root 'home#index'

  resources :categories, path: '', only: [:index,:show] do
    resources :articles, path: '', only: [:index,:show]
  end
end
