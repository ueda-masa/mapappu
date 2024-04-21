Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets

  # 追加: 投稿ページ用のルート
  get '/hokkaido', to: 'tweets#hokkaido', as: 'hokkaido_tweets' # 北海道の投稿ページ
  post '/hokkaido', to: 'tweets#create' # 北海道の投稿フォームからのPOSTリクエスト

  get '/totigi', to: 'tweets#totigi', as: 'totigi_tweets' # 
  post '/totigi', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/tokyo', to: 'tweets#tokyo', as: 'tokyo_tweets' # 東京の投稿ページ
  post '/tokyo', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/kyoto', to: 'tweets#kyoto', as: 'kyoto_tweets' # 
  post '/kyoto', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/oosaka', to: 'tweets#oosaka', as: 'oosaka_tweets' # 
  post '/oosaka', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/fukuyama', to: 'tweets#fukuyama', as: 'fukuyama_tweets' # 
  post '/fukuyama', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/hirosima', to: 'tweets#hirosima', as: 'hirosima_tweets' # 
  post '/hirosima', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/fukuoka', to: 'tweets#fukuoka', as: 'fukuoka_tweets' # 福岡の投稿ページ
  post '/fukuoka', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト

  get '/test', to: 'tweets#test', as: 'test_tweets' # 福岡の投稿ページ
  post '/test', to: 'tweets#create' # 投稿フォームからのPOSTリクエスト



  # 他のルート定義

  # Defines the root path route ("/")
  # root "articles#index"
  get '/itiran', to: 'tweets#itiran', as: 'itiran'

  get '/explanation', to: 'tweets#explanation', as: 'explanation'

end