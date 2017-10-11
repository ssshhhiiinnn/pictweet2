Rails.application.routes.draw do
  devise_for :users
  root   'tweets#index'
  get    'tweets'         => 'tweets#index'
  get    'tweets/new'     => 'tweets#new'
  post   'tweets'         => 'tweets#create'
  get    'users/:id'      => 'users#show'
  delete 'tweets/:id'     => 'tweets#destroy'
  patch  'tweets/:id'     => 'tweets#update'
  get 'tweets/:id/edit'  => 'tweets#edit'
end


# Rails.application.routes.draw do
#     devise_for :users
#     root  'tweets#index'
#     get   'tweets'      =>  'tweets#index'
#     get   'tweets/new'  =>  'tweets#new'
#     post  'tweets'      =>  'tweets#create'
#     delete  'tweets/:id'  => 'tweets#destroy'
#     get   'tweets/:id/edit'  => 'tweets#edit'
#     get   'users/:id'  =>  'users#show'
#   end
