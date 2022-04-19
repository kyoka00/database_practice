# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|支払方法テーブル|payment_method|


カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|支払方法ID|payment_id|integer|Yes (PK)| | |
|2|支払方法|payment_method|character varying|Yes| | |
|3|備考|payment_extra|character varying|Yes| | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|payment_method_pkc|payment_id| |Yes|Yes| |
