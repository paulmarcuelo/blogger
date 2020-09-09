Rails.application.routes.draw do
  root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  resources :tags
  # get "/articles", to: "articles#index"
end
