FrontendTestingForSkeptics::Application.routes.draw do
  root :to => 'countries#index'

  resources :countries, :only => [:index, :show]
end
