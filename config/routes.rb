SackUp::Application.routes.draw do
  root 'projects#index'

  resources :projects
  devise_for :users

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

end
