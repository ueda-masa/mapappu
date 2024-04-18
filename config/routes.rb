Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets

  # 追加: 投稿ページ用のルート
  get '/hokkaido', to: 'tweets#hokkaido', as: 'hokkaido_tweets' # 北海道の投稿ページ
  post '/hokkaido', to: 'tweets#create' # 北海道の投稿フォームからのPOSTリクエスト

  get '/tokyo', to: 'tweets#tokyo', as: 'tokyo_tweets' # 東京の投稿ページ
  get '/fukuoka', to: 'tweets#fukuoka', as: 'fukuoka_tweets' # 福岡の投稿ページ

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/itiran', to: 'tweets#itiran', as: 'itiran'

  get '/seisaku', to: 'pages#seisaku', as: 'seisaku'




end