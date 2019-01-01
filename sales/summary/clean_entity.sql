alter table entity add column channel text;
update entity set channel= regexp_replace(entity_subtype, '^客户\\','') where entity_subtype like '客户\\%';  


insert into entity ( entity_type, short_name, channel) select distinct '客户', customer_name , 'need_update' from salesumhist s left outer join entity  e on (e.short_name=s.customer_name) where e.short_name is null;


update entity set channel='电子商务' 
where channel='need_update' 
and (short_name like '1号店%' 
or short_name like 'kateandkimi.com'
or short_name like '上海本来%'
or short_name like '亚马逊%'
or short_name like '天猫%'
or short_name like '苏宁%')
;

update entity set channel='商超' 
where channel='need_update' 
and (short_name like '%汇金%' 
or short_name like '%旺中旺超市%'
or short_name like '家乐福%'
or short_name like '家家悦%'
or short_name like '绿地优鲜%'
)
;

update entity set channel='批发' 
where channel='need_update' 
and (short_name like '%味和氏%' 
or short_name like '%东升永达%'
)
;

update entity set channel='其他' 
where channel='need_update' 
and (short_name like '%王春辉%' 
or short_name like '%鲍海喆%'
)
;

alter table entity add column group_name text;
alter table entity add column state text;
update entity set group_name='家乐福' where group_name is null and short_name like '%家乐福%';
update entity set group_name='天猫' where group_name is null and short_name like '%天猫%';
update entity set group_name='1号店' where group_name is null and short_name like '1号%';
update entity set group_name='City Super环盛' where group_name is null and short_name like '%环盛%';
update entity set group_name='久光' where group_name is null and short_name like '%久光%';
update entity set group_name='绿地优鲜' where group_name is null and short_name like '%绿地%';
update entity set group_name='飞牛' where group_name is null and short_name like '飞牛%';
update entity set group_name='华润' where group_name is null and short_name like '%华润%';
update entity set group_name='苏宁' where group_name is null and short_name like '%苏宁%';
update entity set group_name='味和氏' where group_name is null and short_name like '%味和氏%';
update entity set group_name='东升永达' where group_name is null and short_name like '%东升永达%';
update entity set group_name='家家悦' where group_name is null and short_name like '%家家悦%';
update entity set group_name='盒马' where group_name is null and short_name like '%盒马%';
update entity set group_name='百盛' where group_name is null and short_name like '%百盛%';
update entity set group_name='全洲' where group_name is null and short_name like '%全洲%';
update entity set group_name=short_name where group_name is null and entity_type='客户';

insert into city( _id, name) values ( 1000,'上海市'), ( 1001,'天津市'), (1002,'重庆市'),(1003,'北京市');

alter table entity add column city text;
alter table entity drop column state ;
update entity set city = null;

update  entity e set city =c.name
from city c
where e.city is null
and (
                substring(e.short_name          , '^..')        = substring(c.name, '^..')
        or      substring(e.short_name          , '-(..)')      = substring(c.name, '^..')
        or      substring(e.full_name           , '^..')        = substring(c.name, '^..')
) ;

update  entity e set city =c.name
from city c
where e.city is null
and (
                substring(e.invoice_address     , '^(..)')      = substring(c.name, '^..')
        or      substring(e.invoice_address     , '省(..)')     = substring(c.name, '^..')
        or      substring(e.address             , '^(..)')      = substring(c.name, '^..')
) ;


update entity e set city = c.name
from area a
left outer join city c on ( a.city_id=c.city_id)
left outer join province p on (c.province_id=p.province_id)
where  e.city = a.name ;


select distinct city, c.name, p.name from entity e  join area a on (a.name=city) left outer join city c on ( a.city_id=c.city_id) left outer join province p o
n (c.province_id=p.province_id);

update  entity e set city =c.name
from area a
left outer join city c on ( a.city_id=c.city_id)
left outer join province p on (c.province_id=p.province_id)
where e.city is null
and (
                substring(e.invoice_address     , '省(..)')     = substring(a.name, '^..')
) ;




