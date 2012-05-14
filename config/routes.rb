Fppis::Application.routes.draw do
  root to: 'pages#index'

  match '/who'      =>  'Pages#who'
  match '/contact'  =>  'Pages#contact'

  resources :posts

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  mount Ckeditor::Engine => '/ckeditor'
end
