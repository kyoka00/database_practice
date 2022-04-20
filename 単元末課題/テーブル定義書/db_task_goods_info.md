# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|商品情報テーブル|goods_info|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|商品ID|goods_id|character varying|Yes (PK)| | |
|2|商品カテゴリーID|goods_category_id|integer|Yes| | |
|3|商品名|goods_name|character varying|Yes| | |
|4|商品金額|goods_price|integer|Yes| | |
|5|値引額|goods_discount_price|integer| | | |
|6|備考|extra|character varying| | | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|goods_info_pkc|goods_id| |Yes|Yes| |

