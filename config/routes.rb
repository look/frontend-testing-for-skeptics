FrontendTestingForSkeptics::Application.routes.draw do
  root :to => 'countries#index'
  get 'xss' => 'pages#xss'

  resources :countries, :only => [:index, :show]
end
