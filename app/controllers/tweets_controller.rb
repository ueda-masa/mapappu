class TweetsController < ApplicationController
  before_action :set_region

  def index
    @tweets = Tweet.where(region: @region)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      case params[:tweet][:region]
      when 'hokkaido'
        redirect_to hokkaido_path, notice: 'Tweet was successfully created.'
      when 'tokyo'
        redirect_to tokyo_path, notice: 'Tweet was successfully created.'
      when 'oosaka'
        redirect_to oosaka_path, notice: 'Tweet was successfully created.'
      when 'kyoto'
        redirect_to kyoto_path, notice: 'Tweet was successfully created.'
      when 'fukuoka'
        redirect_to fukuoka_path, notice: 'Tweet was successfully created.'
      when 'hirosima'
        redirect_to hirosima_path, notice: 'Tweet was successfully created.'
      else
        redirect_to root_path, notice: 'Tweet was successfully created.'
      end
    else
      render :new
    end
  end

  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path, notice: 'Tweet was successfully destroyed.'
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def itiran
    render 'itiran' # ビューをレンダリングする
  end



  def hokkaido
    @tweets = Tweet.where(region: 'hokkaido')
  end

  def  totigi
    @tweets = Tweet.where(region: 'totigi')
  end

  def tokyo
    @tweets = Tweet.where(region: 'tokyo')
  end

  def kyoto
    @tweets = Tweet.where(region: 'kyoto')
  end

  def oosaka
    @tweets = Tweet.where(region: 'oosaka')
  end

  def fukuyama
    @tweets = Tweet.where(region: 'fukuyama')
  end

  def hirosima
    @tweets = Tweet.where(region: 'hirosima')
  end

  def fukuoka
    @tweets = Tweet.where(region: 'fukuoka')
  end

  def test
    @tweets = Tweet.where(region: 'test')
  end

  def explanation
    @tweets = Tweet.where(region: 'explanation')
    render 'explanation' # 機能説明ページのビューをレンダリングする
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :image, :introduction, :region)
  end

  def set_region
    @region = params[:region]
  end
end