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
各都道府県別に視覚的にグルメ検索ができ、ジャンル、年齢別にグルメを検索することができます。

# URL
https://gourmet-discovery-app-33991.herokuapp.com/

# テスト用アカウント
メールアドレス：t@t
<br>パスワード：ttt111
<br>Basic認証 ユーザー名：admin
<br>Basic認証 パスワード：2222

# 利用方法
- 投稿したいユーザーは新規登録をしてください（閲覧のみであれば登録不要）。
- ユーザー登録をし、ログインすれば全ての機能を利用できます（他人が投稿したデータの編集・削除等はできません）。
- トップページ：各都道府県のグルメをワンクリックで選択できます。
- 各一覧ページ：各都道府県の投稿されたグルメ一覧を見ることができます。
- 各詳細ページ：一覧ページの画像をクリックすると投稿の詳細情報を見ることができます。
- 新規投稿ボタン：入力フォームに従い必要事項を入力すると、新規投稿をすることができます。

# 目指した問題解決
既存のグルメアプリを使っていく中で下記の問題点を挙げられる。
- グルメを写真で確認してからお店に行きたい
- 食べ歩きグルメだけ、安価なものだけ、同年代の人が行っているお店に絞って検索したい
- 旅行中ではなくても、日本全国のグルメを見て回って旅行した気分になりたい

<br>上記の問題点を解決できることを目指した。

# 洗い出した要件 
- ユーザー管理機能
- 新規投稿機能
- トップページ
- 都道府県別グルメ一覧表示機能
- 投稿詳細表示機能
- 検索機能

# 実装した機能についてのGIFと説明
## トップページの説明
![demo](https://gyazo.com/20667facde6c49a77c8ec8a449d846da/raw)
地図上の各都道府県のブロックをクリックすると各都道府県ごとのグルメ一覧ページに遷移できます。
</br>（地図の下部にひっそりと日本全国一覧ページも設けています）
</br>ワンクリックで視覚的に都道府県を選択できるようにしたのがこだわりの点です。

## 各都道府県別一覧ページの説明
![demo](https://gyazo.com/5816c21bfef48eb1c802596b8084f32f/raw)
各都道府県の一覧ページです
</br>クリックすると詳細ページに遷移します。

# 実装予定の機能
投稿者の性別ごとでの検索機能

# データベース設計
![demo](https://gyazo.com/8c5427e2ccf43e8154f671b14ba885fb/raw)

# ローカルでの動作方法
https://github.com/Yurika-1016/gourmet-discovery-app-33991.git
<br>ruby version '2.6.5'
<br>Ruby on Rails

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