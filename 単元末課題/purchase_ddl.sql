-- Project Name : 単元末課題
-- Date/Time    : 2022/04/19 22:39:46
-- Author       : 前野杏佳
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << 注意！！ >>
  BackupToTempTable, RestoreFromTempTable疑似命令が付加されています。
  これにより、drop table, create table 後もデータが残ります。
  この機能は一時的に $$TableName のような一時テーブルを作成します。
  この機能は A5:SQL Mk-2でのみ有効であることに注意してください。
*/

-- 商品カテゴリーテーブル
--* RestoreFromTempTable
create table goods_category (
  goods_category_id integer not null
  , goods_category character varying not null
  , tax_rate integer not null
  , constraint goods_category_PKC primary key (goods_category_id)
) ;

-- ポイント履歴テーブル
--* RestoreFromTempTable
create table point_history (
  member_id character varying not null
  , point_fluctuation_id integer not null
  , point_fluctuation_amount integer not null
  , receipt_no character varying not null
  , constraint point_history_PKC primary key (point_fluctuation_id,member_id)
) ;

-- ポイント会員ポイントテーブル
--* RestoreFromTempTable
create table point_member_sumpoint (
  member_id character varying not null
  , sum_point integer not null
  , constraint point_member_sumpoint_PKC primary key (member_id)
) ;

-- ポイント会員情報テーブル
--* RestoreFromTempTable
create table point_member_info (
  member_id character varying not null
  , member_name character varying
  , member_gender integer
  , member_birth_date date
  , member_prefecture character varying
  , member_city character varying
  , member_address character varying
  , member_address_extra character varying
  , constraint point_member_info_PKC primary key (member_id)
) ;

-- 支払方法テーブル
--* RestoreFromTempTable
create table payment_method (
  payment_id integer not null
  , payment_method character varying not null
  , payment_extra character varying
  , constraint payment_method_PKC primary key (payment_id)
) ;

-- 年代テーブル
--* RestoreFromTempTable
create table age_group (
  age_group_id integer not null
  , age_group integer not null
  , constraint age_group_PKC primary key (age_group_id)
) ;

-- 購入者情報テーブル
--* RestoreFromTempTable
create table purchaser_info (
  receipt_no character varying not null
  , gender integer
  , age_group_id integer
  , constraint purchaser_info_PKC primary key (receipt_no)
) ;

-- 支払情報テーブル
--* RestoreFromTempTable
create table payment_info (
  receipt_no character varying not null
  , payment_id integer not null
  , member_id character varying
  , used_point_amount integer
  , tax8_purchased_price integer
  , tax8_tax_price integer
  , tax10_purchased_price integer
  , tax10_tax_price integer
  , purchased_price integer not null
  , constraint payment_info_PKC primary key (receipt_no)
) ;

-- 購入小計テーブル
--* RestoreFromTempTable
create table goods_amount (
  receipt_no character varying not null
  , goods_id character varying not null
  , goods_count integer not null
  , goods_sum_price integer not null
  , goods_tax integer not null
  , constraint goods_amount_PKC primary key (receipt_no,goods_id)
) ;

-- 商品情報テーブル
--* RestoreFromTempTable
create table goods_info (
  goods_id character varying not null
  , goods_category_id integer not null
  , goods_name character varying not null
  , goods_price integer not null
  , goods_discount_price integer
  , extra character varying
  , constraint goods_info_PKC primary key (goods_id)
) ;

-- 従業員テーブル
--* RestoreFromTempTable
create table staff (
  staff_id integer not null
  , shop_id integer not null
  , staff_name character varying not null
  , spare character varying
  , constraint staff_PKC primary key (staff_id)
) ;

-- 購入情報テーブル
--* RestoreFromTempTable
create table puchase_info (
  receipt_no character varying not null
  , purchased_datetime timestamp not null
  , cashier_no integer not null
  , staff_id integer not null
  , constraint puchase_info_PKC primary key (receipt_no)
) ;

-- 店テーブル
--* RestoreFromTempTable
create table shop (
  shop_id integer not null
  , convinience_store_id integer not null
  , shop_name character varying not null
  , shop_address character varying not null
  , shop_tel character varying
  , constraint shop_PKC primary key (shop_id,convinience_store_id)
) ;

-- コンビニテーブル
--* RestoreFromTempTable
create table convinience_store (
  convinience_store_id integer not null
  , convinience_store_name character varying not null
  , constraint convinience_store_PKC primary key (convinience_store_id)
) ;

comment on table goods_category is '商品カテゴリーテーブル';
comment on column goods_category.goods_category_id is '商品カテゴリーID';
comment on column goods_category.goods_category is '商品カテゴリー';
comment on column goods_category.tax_rate is '税率';
comment on column goods_category.recipt_no is '伝票番号';

comment on table point_history is 'ポイント履歴テーブル';
comment on column point_history.member_id is '会員ID';
comment on column point_history.point_fluctuation_id is 'ポイント増減ID';
comment on column point_history.point_fluctuation_amount is 'ポイント増減';
comment on column point_history.receipt_no is '伝票番号';
comment on column point_history.recipt_no is '伝票番号';

comment on table point_member_sumpoint is 'ポイント会員ポイントテーブル';
comment on column point_member_sumpoint.member_id is '会員ID';
comment on column point_member_sumpoint.sum_point is 'ポイント合計';
comment on column point_member_sumpoint.recipt_no is '伝票番号';

comment on table point_member_info is 'ポイント会員情報テーブル';
comment on column point_member_info.member_id is '会員ID';
comment on column point_member_info.member_name is '名前';
comment on column point_member_info.member_gender is '性別';
comment on column point_member_info.member_birth_date is '生年月日';
comment on column point_member_info.member_prefecture is '住所（都道府県）';
comment on column point_member_info.member_city is '住所（市町村）';
comment on column point_member_info.member_address is '住所（番地）';
comment on column point_member_info.member_address_extra is '住所（備考）';
comment on column point_member_info.recipt_no is '伝票番号';

comment on table payment_method is '支払方法テーブル';
comment on column payment_method.payment_id is '支払方法ID';
comment on column payment_method.payment_method is '支払方法';
comment on column payment_method.payment_extra is '備考';
comment on column payment_method.recipt_no is '伝票番号';

comment on table age_group is '年代テーブル';
comment on column age_group.age_group_id is '年代ID';
comment on column age_group.age_group is '年代';
comment on column age_group.recipt_no is '伝票番号';

comment on table purchaser_info is '購入者情報テーブル';
comment on column purchaser_info.receipt_no is '伝票番号';
comment on column purchaser_info.gender is '性別';
comment on column purchaser_info.age_group_id is '年代ID';
comment on column purchaser_info.recipt_no is '伝票番号';

comment on table payment_info is '支払情報テーブル';
comment on column payment_info.receipt_no is '伝票番号';
comment on column payment_info.payment_id is '支払方法ID';
comment on column payment_info.member_id is '会員ID';
comment on column payment_info.used_point_amount is 'ポイント利用額';
comment on column payment_info.tax8_purchased_price is '小計（8%)';
comment on column payment_info.tax8_tax_price is '小計税金（8%)';
comment on column payment_info.tax10_purchased_price is '小計（10%）';
comment on column payment_info.tax10_tax_price is '小計税金(10%)';
comment on column payment_info.purchased_price is '合計金額';
comment on column payment_info.recipt_no is '伝票番号';

comment on table goods_amount is '購入小計テーブル';
comment on column goods_amount.receipt_no is '伝票番号';
comment on column goods_amount.goods_id is '商品ID';
comment on column goods_amount.goods_count is '個数';
comment on column goods_amount.goods_sum_price is '商品小計';
comment on column goods_amount.goods_tax is '商品税額';
comment on column goods_amount.recipt_no is '伝票番号';

comment on table goods_info is '商品情報テーブル';
comment on column goods_info.goods_id is '商品ID';
comment on column goods_info.goods_category_id is '商品カテゴリーID';
comment on column goods_info.goods_name is '商品名';
comment on column goods_info.goods_price is '商品金額';
comment on column goods_info.goods_discount_price is '値引額';
comment on column goods_info.extra is '備考';
comment on column goods_info.recipt_no is '伝票番号';

comment on table staff is '従業員テーブル';
comment on column staff.staff_id is '担当者ID';
comment on column staff.shop_id is '店ID';
comment on column staff.staff_name is '担当者名';
comment on column staff.spare is '備考';
comment on column staff.recipt_no is '伝票番号';

comment on table puchase_info is '購入情報テーブル';
comment on column puchase_info.receipt_no is '伝票番号';
comment on column puchase_info.purchased_datetime is '購入日時';
comment on column puchase_info.cashier_no is 'レジ番号';
comment on column puchase_info.staff_id is '担当者番号';
comment on column puchase_info.recipt_no is '伝票番号';

comment on table shop is '店テーブル';
comment on column shop.shop_id is '店ID';
comment on column shop.convinience_store_id is 'コンビニID';
comment on column shop.shop_name is '店名';
comment on column shop.shop_address is '店住所';
comment on column shop.shop_tel is '店電話番号';
comment on column shop.recipt_no is '伝票番号';

comment on table convinience_store is 'コンビニテーブル';
comment on column convinience_store.convinience_store_id is 'コンビニID';
comment on column convinience_store.convinience_store_name is 'コンビニ名';
comment on column convinience_store.recipt_no is '伝票番号';

