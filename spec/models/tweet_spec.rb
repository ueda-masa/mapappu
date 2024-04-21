require 'rails_helper'
require 'faker'

RSpec.describe Tweet, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.create(:user) 
      @tweet = FactoryBot.build(:tweet, user: @user) 
    end

    context '正常に登録できる場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@tweet).to be_valid
      end
    end

    context '正常に登録できない場合' do
      it 'titleが空では登録できない' do
        @tweet.title = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Title can't be blank"
      end

      it 'introductionが空では登録できない' do
        @tweet.introduction = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include "Introduction can't be blank"
      end
    end
  end
end