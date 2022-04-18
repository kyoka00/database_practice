-- Project Name : データベース設計＿演習問題
-- Date/Time    : 2022/04/18 12:40:56
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

-- 著者テーブル
--* RestoreFromTempTable
create table author (
  author_id integer not null
  , author_name character varying not null
  , book_id integer
  , constraint author_PKC primary key (author_id)
) ;

-- 出版社テーブル
--* RestoreFromTempTable
create table publisher (
  publisher_id integer not null
  , publisher_name character varying not null
  , book_id integer
  , constraint publisher_PKC primary key (publisher_id)
) ;

-- 書籍テーブル
--* RestoreFromTempTable
create table book (
  book_id integer not null
  , book_name character varying not null
  , book_price integer not null
  , published_year date
  , publisher_id integer not null
  , author_id integer not null
  , constraint book_PKC primary key (book_id)
) ;

comment on table author is '著者テーブル';
comment on column author.author_id is '著者ID';
comment on column author.author_name is '著者名';
comment on column author.book_id is '書籍ID';

comment on table publisher is '出版社テーブル';
comment on column publisher.publisher_id is '出版社ID';
comment on column publisher.publisher_name is '出版社名';
comment on column publisher.book_id is '書籍ID';

comment on table book is '書籍テーブル';
comment on column book.book_id is '書籍ID';
comment on column book.book_name is '書籍名';
comment on column book.book_price is '定価';
comment on column book.published_year is '発行年月日';
comment on column book.publisher_id is '出版社ID';
comment on column book.author_id is '著者ID';

