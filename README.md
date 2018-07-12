# task_managers

## Description
[株式会社万葉さんの新人社員教育用カリキュラム](https://github.com/everyleaf/el-training)を自分なりに作ってみました。

## テーブル構造

**2018/07/07 データ構造の作成** 
*不備があれば随時変更すること*
### Taskモデル
| column_name | id      | task   | status  | period | explanation | priority | label  |
|:-----------:|:-------:|:------:|:-------:|:------:|:-----------:|:--------:|:------:|
| data_type   | integer | string | integer | string | string      | integer  | string |

### Userモデル
| column    | id      | user_name |
|:---------:|:-------:|:---------:|
| data_type | integer | string    |

