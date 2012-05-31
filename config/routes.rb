Fppis::Application.routes.draw do
  root to: 'pages#index'

  match '/who'      =>  'Pages#who'
  match '/contact'  =>  'Pages#contact'

  match '/more_fppis' => 'Pages#more_fppis'
  match '/terms'    =>  'Pages#terms'
  match '/policy'   =>  'Pages#policy'
  match '/sitemap'  =>  'Pages#sitemap'

  resources :posts, only: [:index, :show] do
    resources :comments, only: [:create]
  end

  resources :albums, only: [:index, :show]

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  mount Ckeditor::Engine => '/ckeditor'
end
