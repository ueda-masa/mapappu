class TweetsController < ApplicationController
  before_action :set_region

  def index
    @tweets = Tweet.where(region: @region)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      if params[:tweet][:region] == 'hokkaido'
        redirect_to hokkaido_path, notice: 'Tweet was successfully created.'
      elsif params[:tweet][:region] == 'tokyo'
        redirect_to tokyo_path, notice: 'Tweet was successfully created.'
      else
        redirect_to root_path, notice: 'Tweet was successfully created.'
      end
    else
      render :new
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def hokkaido
    @tweets = Tweet.where(region: 'hokkaido')
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :image, :introduction, :region)
  end

  def set_region
    @region = params[:region]
  end
end