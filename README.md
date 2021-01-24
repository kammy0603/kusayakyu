## users テーブル

| Column               | Type     | Options      |
| --------             | ------   | -----------  |
| image                | ------   | null: false  |
| email                | string   | unique: true null:false|
| encrypted_password   | string   | null: false  |
| nickname             | string   | null: false  |
| age                  | integer  | null: false  |
| prefecture_id        | integer  | null: false  |
| region_id            | integer  | null: false  |
| baseball_term        | integer  | null: false  |
| achievement          | text     |              |
| position             | ???      | null: false  |
| level                | integer  | null: false  |
| hope_frequency       | integer  | null: false  |
| day_of_hope          | string   |              |
| helpers              | integer  | null: false  |
| players              | integer  | null: false  |
| players_registration | integer  | null: false  |

### Association

- has_many :rooms
- has_many :messages
- has_many :user_comments

## rooms テーブル

| Column | Type       | Options     |
| ------ | ------     | ----------- |
| name   | string     | null: false |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :team, through: room_teams
- has_many :messages

## room_teams テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| team   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
- belongs_to :team
- belongs_to :room


## teams テーブル

| Column          | Type       | Option            |
| ------          | -------    | -----------       |
| postal_code     | string     | null: false       |
| prefecture      | integer    | null: false       |
| municipalities  | string     | null: false       |
| address         | string     | null: false       |
| building_number | string     |                   |
| phone_number    | string     | null: false       |
| purchase        | references | foreign_key: true |

### Association

- has_many :rooms, through: room_users
- has_many :messages
- has_many :user_comments


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| message | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :team
- belongs_to :room


## user_comment テーブル
| Column       | Type       | Option            |
| ------       | -------    | -----------       |
| comment      | string     |                   |
| user         | references | foreign_key: true |

### Association

- belongs_to :user


## team_comment テーブル
| Column       | Type       | Option            |
| ------       | -------    | -----------       |
| comment      | string     |                   |
| team         | references | foreign_key: true |

### Association

- belongs_to :team

