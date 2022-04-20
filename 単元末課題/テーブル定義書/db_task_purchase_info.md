# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|購入情報テーブル|purcharse_info|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|伝票番号|receipt_no|character varying|Yes (PK)| | |
|2|購入日時|purchased_datetime|timestamp(6) without time zone|Yes| | |
|3|レジ番号|cashier_no|integer|Yes| | |
|4|担当者番号|staff_id|integer|Yes| | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|puchase_info_pkc|receipt_no| |Yes|Yes| |

