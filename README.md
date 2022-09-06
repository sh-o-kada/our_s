# テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :schedules

## schedulesテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| work_time_1_id | integer    | null: false                    |
| work_time_2_id | integer    |                                |
| work_time_3_id | integer    |                                |
| start_time     | datetime   | null: false                    |

### Association
- belongs_to :user
- belongs_to :work_time_1
- belongs_to :work_time_2
- belongs_to :work_time_3