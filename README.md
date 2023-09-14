## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| last_name_kana     | string  | null: false               |
| first_name_kana    | string  | null: false               |
| birthday           | date    | null: false               |
| graduation_year    | integer | null: false               |
| graduation_school  | integer | null: false               |
| discipline         | integer | null: false               |

### Association
- has_many :schedules
- has_many :comments
- has_many :applicants



## schedules テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| start_time          | datetime   | null: false                    |
| finish_time         | datetime   |                                |
| place               | string     | null: false                    |
| activity            | text       |                                |
| participant         | integer    |                                |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many   :applicants



## applicants テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| content          | string     | null: false                    |
| user             | references | null: false, foreign_key: true |
| schedule         | references | null: false, foreign_key: true |

### Association
- belongs_to  :user
- belongs_to  :schedule



##  messages テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| message          | string     | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association
- belongs_to :user
