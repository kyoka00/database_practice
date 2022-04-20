# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|ポイント履歴テーブル|point_history|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|会員ID|member_id|character varying|Yes (PK)| | |
|2|ポイント増減ID|point_fluctuation_id|integer|Yes (PK)| | |
|3|ポイント増減|point_fluctuation_amount|integer|Yes| | |
|4|伝票番号|receipt_no|character varying|Yes| | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|point_history_pkc|point_fluctuation_id,member_id| |Yes|Yes| |


