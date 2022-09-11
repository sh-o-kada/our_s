# アプリケーション名
Ours

# アプリケーション概要
パート、アルバイトスタッフのシフト提出が可能で、それを基に管理側が作成、確定、共有することができる。

# URL

# テスト用アカウント

# 利用方法
## シフト提出
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
2. トップページのカレンダー内にある「<提出する>」ボタンから該当日のシフト（日付、名前、第一〜第三希望）を入力し提出する
## シフト確定
1. トップページのカレンダー内

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