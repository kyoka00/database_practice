# テーブル定義書

|システム名|作成者|作成日|
|----|----|----|
|購買情報管理システム|前野杏佳|2022/4/19|

|論理名|物理名|
|----|----|
|ポイント会員情報テーブル|point_member_info|

カラム情報

|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|会員ID|member_id|character varying|Yes (PK)| | |
|2|名前|member_name|character varying| | | |
|3|性別|member_gender|integer| | | |
|4|生年月日|member_birth_date|date| | | |
|5|住所（都道府県）|member_prefecture|character varying| | | |
|6|住所（市町村）|member_city|character varying| | | |
|7|住所（番地）|member_address|character varying| | | |
|8|住所（備考）|member_address_extra|character varying| | | |

インデックス情報
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|:----|:----|:----|:----|:----|:----|:----|
|1|point_member_info_pkc|member_id| |Yes|Yes| |
