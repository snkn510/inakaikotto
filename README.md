# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :events
- has_many :bookings

## events テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| description        | text       | null: false                    |
| stay_id            | integer    | null: false                    |
| price              | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :booking

## bookings テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| event     | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :event
- has_one :guest

## guests テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| last_name     | string     | null: false                    |
| first_name    | integer    | null: false                    |
| phone_number  | string     | null: false                    |
| email         | string     | null: false, unique: true      |
| booking       | references | null: false, foreign_key: true |

### Association

- belongs_to :booking