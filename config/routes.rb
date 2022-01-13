Rails.application.routes.draw do
  resources :recipes
  devise_for :authors
  # get 'home/index'
  root to: "home#index"
  scope module: 'authors' do 
    resources :posts
  end
end

