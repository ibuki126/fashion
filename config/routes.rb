Rails.application.routes.draw do
  devise_for:users
  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  resources :tweets

  resources :tweets do
    resources :likes, only: [:create, :destroy]
end
end