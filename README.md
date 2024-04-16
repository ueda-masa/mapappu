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
| name                | string | null: false |
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

