# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|店テーブル|shop|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|店ID|shop_id|integer|Yes (PK)| | |
|2|コンビニID|convinience_store_id|integer|Yes (PK)| | |
|3|店名|shop_name|character varying|Yes| | |
|4|店住所|shop_address|character varying|Yes| | |
|5|店電話番号|shop_tel|character varying| | | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|shop_pkc|shop_id,convinience_store_id| |Yes|Yes| |

