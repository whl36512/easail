drop table food_cat;
create table food_cat 
( 	category_code text
, 	parent_category_code text
	, category_name text
);

\copy food_cat from 'food_cat.txt' with delimiter '	'
