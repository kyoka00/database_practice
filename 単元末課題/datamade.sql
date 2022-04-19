insert into convinience_store values
(001, 'ファミリーマート');

insert into shop values
(00001,001, '国際通り入口店','沖縄県那覇市牧志1111','098-000-0000'),
(00002,001, '那覇市役所前店','沖縄県那覇市松尾1111','098-010-0110'),
(00003,001, '久茂地美栄橋店','沖縄県那覇市牧志18－11','098-001-0100');

insert into staff values
(00000001,00001,'名嘉真',null),
(00000002,00001,'山田',null),
(00000003,00002,'鈴木',null);

insert into puchase_info values
('2204190000001','2022-04-19 12:00:00',0001,00002);

insert into purchaser_info values
('2204190000001',1,4);

insert into age_group values
(1,0),(2,10),(3,20),(4,30),(5,40),(6,50),(7,60),(8,70);

insert into goods_category values
(000001,'弁当',8),
(000002,'本',10),
(000003,'お菓子',8),
(000004,'衛生用品',10);

insert into goods_info values
('8801007557700',000001,'唐揚げ弁当',390, 10, null),
('4903301241447',000004,'歯磨き粉',300,0,null),
('4993687856090',000002,'７つの習慣',1000,null,null);

insert into goods_amount values
('2204190000001','8801007557700',1,380,30),
('2204190000001','4903301241447',1,300,30),
('2204190000001','4993687856090',1,1000,100);

insert into payment_method values
(001,'現金',null),
(002,'Paypay',null);

insert into payment_info values
('2204190000001',002,'00000000001',null,380,30,1300,130,1840);

insert into point_member_info values
('00000000001','山田太郎',1,'1980-12-12','東京都','練馬区','292-22','apart1');

insert into point_member_sumpoint values
('00000000001',500);

insert into point_history values
('00000000001',000001,10,'2204190000001');


select pf.receipt_no,sh.shop_name,sh.shop_address,sh.shop_tel,pf.purchased_datetime,
pf.cashier_no,st.staff_id,gi.goods_name,gi.goods_price,gi.goods_discount_price,
gc.tax_rate,ga.goods_tax,pi.tax8_tax_price, pi.tax10_tax_price,pi.purchased_price

from puchase_info pf

join staff st
on st.staff_id = pf.staff_id

join shop sh
on sh.shop_id =st.shop_id

join goods_amount ga
on ga.receipt_no = pf.receipt_no

join goods_info gi
on gi.goods_id = ga.goods_id

join goods_category gc
on gc.goods_category_id =gi.goods_category_id

join payment_info pi
on pi.receipt_no = pf.receipt_no;


