alter table salesumhist add column product_name text;
update salesumhist set product_name = regexp_replace(product, '^.*℃', '') where product like '%℃%';
update salesumhist set product_name = regexp_replace(product, '^\* ', '') where product like '* %';


update salesumhist set product_name = '家乐氏葡萄麦维285g' where product like '%家乐氏提子麦维285g%';
update salesumhist set product_name = '宾迪巧克力慕斯蛋糕 12psc' where product like '%宾迪巧克力慕斯蛋糕12psc%';
update salesumhist set product_name = '川宁牌豪门伯爵茶4*100S' where product like '%川宁牌豪门伯爵茶100s%';
update salesumhist set product_name = '百味来吸管状意大利面#9 500g' where product like '%百味来吸管状意大利面 #9 500g%';
update salesumhist set product_name = '百味来硬质小麦弯曲形意大利通心粉#41(弯形通心意大利面)500g 袋装' where product like '%百味来硬质小麦弯曲形意大利通心粉#41(弯形通心意大利面)500克 袋装%';
update salesumhist set product_name = '百味来螺旋形意大利面#98 500g' where product like '%百味来硬质小麦螺旋形意大利通心粉 #98 (螺旋形意大利面) 500g 袋装%';
update salesumhist set product_name = '茄意欧优选浓缩番茄膏130g' where product like '%茄意欧优选浓缩番茄膏 130g%';
update salesumhist set product_name = '茄意欧利马豆罐头400g' where product like '%茄意欧马豆 400g%';


alter table salesumhist add column customer_name text;
update salesumhist set customer_name = regexp_replace(customer, '^[ *]+', '')

 -- 家乐氏提子麦维285g
 -- 宾迪巧克力慕斯蛋糕12psc
 -- 川宁牌豪门伯爵茶100s
 -- 百味来吸管状意大利面 #9 500g
 -- 百味来硬质小麦弯曲形意大利通心粉#41(弯形通心意大利面)500克 袋装
 -- 百味来硬质小麦螺旋形意大利通心粉 #98 (螺旋形意大利面) 500g 袋装
 -- 百味来紫苏意粉酱   -- not found in product
 -- 罗兰加拿大纯正枫叶糖浆250g   -- not found
 -- 茄意欧三角豆 400g 		-- not found
 -- 茄意欧优选浓缩番茄膏 130g
 -- 茄意欧意大利番茄泥(利乐装)	-- not found
 -- 茄意欧莲奴豆 410g	-- not found
 -- 茄意欧菠罗蒂豆410g	-- not found
 -- 茄意欧马豆 400g
 -- 蓝钻石牌日式芥茉酱油杏仁 151G -- not found
 -- 蓝钻石牌烟焗杏仁150g -- not found
 -- 蓝钻石牌盐焗杏仁 150g -- not found
 -- 蓝钻石牌蜜焗杏仁150g -- not found
 -- 银色电镀迷你叉9.4cm -- not found
 -- 银色电镀迷你羹9.4cm -- not found

