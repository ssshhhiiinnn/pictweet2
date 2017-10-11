# Rails.application.routes.draw do
#   devise_for :users
#   root  'tweets#index'
#   get   'tweets'         => 'tweets#index'
#   get   'tweets/new'     => 'tweets#new'
#   post  'tweets'         => 'tweets#create'
#   get   'users/:id'      => 'users#show'
#   get  'tweets/:id'      => 'tweets#show'
# end

# resourceメソッドを使った
# Rails.application.routes.draw do
#   devise_for :users
#   root 'tweets#index'
#   resources :tweets                     #tweets_controllerに対してのresourcesメソッド
#   resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
# end

# ネストを使った
Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
