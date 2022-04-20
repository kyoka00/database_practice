# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|コンビニテーブル|convinience_store|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|伝票番号|receipt_no|character varying|Yes (PK)| | |
|2|商品ID|goods_id|character varying|Yes (PK)| | |
|3|個数|goods_count|integer|Yes| | |
|4|商品小計|goods_sum_price|integer|Yes| | |
|5|商品税額|goods_tax|integer|Yes| | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|goods_amount_pkc|receipt_no,goods_id| |Yes|Yes| |


