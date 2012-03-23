Cnshs::Application.routes.draw do
  match "/login" => "sessions#new"
  match "/logout" => "sessions#destroy"

  root :to => "proposes#index"
  resources :proposes, :only => [:index, :create]
end
