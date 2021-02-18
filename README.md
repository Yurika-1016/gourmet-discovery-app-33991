# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

**以下実装後に再編集します**

# アプリケーション名
gourmet-discoveryアプリ
(グルメ発見アプリ)

# アプリケーション概要
旅行先または普段のグルメの投稿・検索ができるツールです。
各都道府県別にグルメ検索ができ、ジャンル、年齢別にグルメを検索することができます。

# URL
完成後に記載

# テスト用アカウント
完成後に記載

# 利用方法
完成後に記載

# 目指した問題解決
旅行先で直面するグルメに対する問題点は下記点が考えられる。
- グルメを写真で確認してからお店に行きたい
- 食べ歩きグルメだけに絞って写真で探したい
- 安価なものだけに絞ってグルメを検索したい
- 同年代の人が利用しているお店にいきたい等

<br>上記の問題点を解決できることを目指した。

# 洗い出した要件 
- ユーザー管理機能
- 新規投稿機能
- 都道府県別ページ遷移機能
- 都道府県別グルメ一覧表示機能
- 投稿詳細表示機能
- 検索機能

# 実装した機能についてのGIFと説明
完成後に記載

# 実装予定の機能
完成後に記載

# データベース設計
完成後に記載

# ローカルでの動作方法
完成後に記載

## Usersテーブル
|      column      |      type       |                 option                    |
| ---------------- | --------------- | ----------------------------------------- |
|     nickname     |     string      |               null:false                  |
|      email       |     string      |               null:false                  |
|encrypted_password|     string      |               null:false                  |
|    gender_id     |     integer     |null:false, numericality: { other_than: 1 }|
### Association
- has_many :posts

## Postsテーブル
|           column           |      type       |                            option                                |
| -------------------------- | --------------- | ---------------------------------------------------------------- |
|           text             |      text       |                                                                  |
|          age_id            |     integer     |       null:false, numericality: { other_than: 1 }                |
|       prefecture_id        |     integer     |       null:false, numericality: { other_than: 1 }                |
|         genre_id           |     integer     |       null:false, numericality: { other_than: 1 }                |
|         address            |      text       |                            null:false                            |
|          user_id           |    references   |                  null:false, foreign_keys: true                  |
### Association
- belongs_to :user