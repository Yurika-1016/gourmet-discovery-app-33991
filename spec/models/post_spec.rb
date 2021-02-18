require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '投稿機能' do
    before do
      @post = FactoryBot.build(:post)
    end

    context '投稿できるとき' do
      it '情報が全て適切に入力されていれば登録できる' do
        expect(@post).to be_valid
      end
      it 'テキストは空でも登録できる' do
        @post.text = ''
        expect(@post).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'ジャンルが空では登録できない' do
        @post.genre_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Genre can't be blank", 'Genre is not a number')
      end
      it '都道府県が空では登録できない' do
        @post.prefecture_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Prefecture can't be blank", 'Prefecture is not a number')
      end
      it '年齢が空では登録できない' do
        @post.age_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Age can't be blank", 'Age is not a number')
      end
      it '場所が空では登録できない' do
        @post.address = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Address can't be blank")
      end
      it '画像が空では登録できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
      it 'genre_idが1では登録できない' do
        @post.genre_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Genre must be other than 1')
      end
      it 'prefecture_idが1では登録できない' do
        @post.prefecture_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Prefecture must be other than 1')
      end
      it 'age_idが1では登録できない' do
        @post.age_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Age must be other than 1')
      end
    end
  end
end
