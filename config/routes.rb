Rails.application.routes.draw do
  devise_for :users
  root to: 'welcomes#index'
  resources :posts, only:[:index, :new, :create, :show] do
    collection do
      get 'search_hokkaido'
    end
  end
end
