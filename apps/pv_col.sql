drop function pv_col(text);
create  or replace function pv_col(select_text text) returns table(col_name text) as
$body$
begin
	return query execute select_text;
	return;
end;
$body$
language 'plpgsql';

select distinct brand || ' text' brand_t from product order by brand_t;

select replace(pv_col('select distinct brand || '' text'' brand_t  from product order by brand_t'), ',', ',');

-- below not work
select * 
from crosstab('select s.summary_date, brand, round(sum(s.net_sale)/10000, 2) net_sale_s
from salesumhist s
	, product p
where s.product_name = p.product_name
group by summary_date, brand
order by summary_date', 'select distinct brand
from product
order by brand' )
as (summary_date text, pv_col('select distinct brand || '' text'' brand_t from product order by brand_t'));

