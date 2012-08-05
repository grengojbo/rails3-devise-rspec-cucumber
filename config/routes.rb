Rails3DeviseRspecCucumber::Application.routes.draw do
  root :to => 'welcome#index'

  authenticated :user do
    root :to => 'home#index'
  end
  devise_for :users
  resources :users, :only => [:show, :index]
end
