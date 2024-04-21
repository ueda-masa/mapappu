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


# テーブル設計

## users テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false, unique: true | 
| encrypted_password  | string | null: false |

has_many : tweets
has_many : comments


## tweets テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| title        | string     | null: false |
| introduction | text       | null: false |
| user         | references | null: false , foreign_key:true |

belongs_to:user
has_many : comments


## comments テーブル

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| comment_text        | text       | null: false |
| tweets              | references | null: false , foreign_key:true |　
| user                | references | null: false , foreign_key:true |

belongs_to:user
belongs_to:tweets







# アプリケーション名
旅行先投稿アプリ

# アプリケーション概要	このアプリケーションでできることを記載。
旅行先を簡単にしらべる事ができるので
社員旅行や家族旅行、少人数のグループ旅行で旅行先を決めるの前に観光地を検索するのにおすすめ。

# URL	デプロイ済みのURLを記載。デプロイが済んでいない場合は、デプロイが完了次第記載すること。


# テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記載。またBasic認証等を設けている場合は、そのID/Passも記載すること。
testA@test
123456

# 利用方法	このアプリケーションの利用方法を記載。説明が長い場合は、箇条書きでリスト化すること。
旅行先を日本地図ベースで簡単に見ることができる。
旅行先を決めるのにおすすめの場所が簡単にみつかる。

# アプリケーションを作成した背景	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。
インターネット検索で場所名を直接検索したり観光地のランキングを個別で調べないとでてこないので手間がかかる
旅行会社のアプリなどで、宿泊場所はおすすめとして出てくるが、観光地を一覧でみることができない。

# 実装した機能についての画像やGIFおよびその説明※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。
操作説明ページにて確認できるようにしております。


# 実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。
トップページのデザインを変更して、新幹線駅ごとに作ることで、旅行の交通の便をイメージしやすくしたい。
新幹線駅ごとに代表的な場所をピックアップして、各ページに、3項目観光地、3項目グルメで先に入れておきたい。
検索機能を追加したい。

# データベース設計	ER図を添付。
https://gyazo.com/685f74e559dce9ba755c12642a804f1e


# 画面遷移図	画面遷移図を添付。
https://gyazo.com/9acce7a757e5a7c4970b1ff653817f96

# 開発環境	使用した言語・サービスを記載。
使用言語：HTML・CSS・Ruby・Ruby on Rails・JavaScript（explanation.htmlのみ）
使用したサービス：Render・GitHub 

# ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。


# 工夫したポイント	制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。
トップページの見やすさと、ログイン前のユーザーは説明機能が見れるようにすることにした。

# 改善点	より改善するとしたらどこか、それはどのようにしてやるのか。
投稿ページの見やすさがまず改善したい。
なんとなく最新の投稿からしか見れないので候補検索ができる機能をつけたい。

# 制作時間	アプリケーションを制作するのにかけた時間。
30時間

