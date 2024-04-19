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
旅行先を簡単にしらべる事ができる

# URL	デプロイ済みのURLを記載。デプロイが済んでいない場合は、デプロイが完了次第記載すること。


# テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記載。またBasic認証等を設けている場合は、そのID/Passも記載すること。


# 利用方法	このアプリケーションの利用方法を記載。説明が長い場合は、箇条書きでリスト化すること。


# アプリケーションを作成した背景	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。


# 実装した機能についての画像やGIFおよびその説明※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。


# 実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。


# データベース設計	ER図を添付。


# 画面遷移図	画面遷移図を添付。


# 開発環境	使用した言語・サービスを記載。


# ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。


# 工夫したポイント	制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。


# 改善点	より改善するとしたらどこか、それはどのようにしてやるのか。


# 制作時間	アプリケーションを制作するのにかけた時間。


