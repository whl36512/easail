create table chinese_city_english
(	english_name text
	, name text
)
;

\copy chinese_city_english from 'chinese-city-english.txt' with delimiter ','
