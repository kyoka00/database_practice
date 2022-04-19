# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|商品カテゴリーテーブル|goods_category|

カラム情報
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|商品カテゴリーID|goods_category_id|integer|Yes (PK)| | |
|2|商品カテゴリー|goods_category|character varying|Yes| | |
|3|税率|tax_rate|integer|Yes| | |


インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|goods_category_pkc|goods_category_id| |Yes|Yes| |
