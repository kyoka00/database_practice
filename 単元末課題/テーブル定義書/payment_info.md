# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|支払情報テーブル|payment_info|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|伝票番号|receipt_no|character varying|Yes (PK)| | |
|2|支払方法ID|payment_id|integer|Yes| | |
|3|会員ID|member_id|character varying| | | |
|4|ポイント利用額|used_point_amount|integer| | | |
|5|小計（8%)|tax8_purchased_price|integer| | | |
|6|小計税金（8%)|tax8_tax_price|integer| | | |
|7|小計（10%）|tax10_purchased_price|integer| | | |
|8|小計税金(10%)|tax10_tax_price|integer| | | |
|9|合計金額|purchased_price|integer|Yes| | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|payment_info_pkc|receipt_no| |Yes|Yes| |
