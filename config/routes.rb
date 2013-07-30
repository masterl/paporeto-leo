Paporeto::Application.routes.draw do
  resources :articles, path: 'artigos', path_names: {new: 'criar',edit: 'editar'}
  root 'articles#index'
end
