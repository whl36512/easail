-- alter table product add column category_code text;
update product set category_code=null ;
update product set category_code='NA' where '一般商品\非食品' =product_type;
update product set category_code='NA' where  '一般商品\礼盒及包装袋'= product_type;
update product set category_code='NA' where brand='沙伯特';
update product set category_code='NA' where brand='3M';
update product set category_code='15.1'  	where category_code is null and brand='品客';
update product set category_code='02.1.2' 	where category_code is null and brand='拉图'  and product_name !~ '(ABC)';
update product set category_code='02.1.2' 	where category_code is null and brand='乐家' and product_name ~ '(油)' and product_name !~ '(外箱)';
update product set category_code='06.4.2' 	where category_code is null and brand='阿布素' and product_name !~ '(酱)';
update product set category_code='12.3'  	where category_code is null and brand='乐家' and product_name ~ '(醋)' and product_name !~ '(ABC)' ;
update product set category_code='14.2.4'  	where category_code is null and product_name ~ '(干红|葡萄酒)' and product_name !~ '(杯|醋)' ;
update product set category_code='14.2.6.1' 	where category_code is null and product_name like  '%啤酒%';
update product set category_code='14.2.3.3' 	where category_code is null and product_name like  '%马莎拉酒%';
update product set category_code='12.3' 	where category_code is null and product_name ~ '(香醋|酒醋|黑醋|白醋|苹果醋)' and product_name !~ '(果酱)';
update product set category_code='01.6' 	where category_code is null and product_name ~ '(奶酪)' and product_name !~ '(云吞|饺|酱|糕|味)';
update product set category_code='01.1.1.1' 	where category_code is null and product_name ~ '(牛奶)' and product_name !~ '(粉)';
update product set category_code='01.7' 	where category_code is null and product_name ~ '(酸奶)';
update product set category_code='02.1.2' 	where category_code is null and product_name ~ '(橄榄油)' and product_name !~'(浸)';
update product set category_code='06.4.2'  	where category_code is null and product_name ~ '(通心粉|意大利面|意面)' and product_name !~'(酱|勺)';
update product set category_code='12.6.2'  	where category_code is null and product_name ~ '(调味酱|沾酱)';
update product set category_code='12.6.2'   	where category_code is null and product_name ~ '(芝麻酱)'  and product_name !~ '(ABC)';
update product set category_code='12.6.2'  	where category_code is null and product_name ~ '(意大利面酱)' ;
update product set category_code='02.2.1.1'   	where category_code is null and product_name ~ '(淡奶油)';
update product set category_code='02.1.2'  	where category_code is null and product_name ~ '(籽油|粟米油)' and  product_name !~ '(浸)';
update product set category_code='01.1.1.1'  	where category_code is null and product_name ~ '(金奶|脱脂奶|全脂淡奶)';
update product set category_code='15.1'  	where category_code is null and product_name ~ '(玉米脆)' ;
update product set category_code='06.4.2'  	where category_code is null and product_name ~ '(意大利.*面)' ;
update product set category_code='06.4.2' 	where category_code is null and product_name ~ '(酱面|拉面)'  and product_name !~ '(ABC)';
update product set category_code='01.6'  	where category_code is null and product_name ~ '(芝士|干酪)'  and product_name !~ '(糕)';
update product set category_code='15.1'  	where category_code is null and product_name ~ '(饼干)';
update product set category_code='08.2.1.2'  	where category_code is null and product_name ~ '(火腿)' and product_name !~ '(ABC)';                      
update product set category_code='04.2.2'  	where category_code is null and product_name ~ '(番茄|玉米粒)'  and product_name !~ '(饼|酱|沙司|味)';
update product set category_code='14.1.1.1'  	where category_code is null and product_name ~ '(泉水)'  and product_name !~ '(ABC)';
update product set category_code='07.1.3'   	where category_code is null and product_name ~ '(煎饼|烙饼)'  and product_name !~ '(ABC)';
update product set category_code='15.2' 	where category_code is null and product_name ~ '(桃仁)'  and product_name !~ '(饼)';
update product set category_code='06.5' 	where category_code is null and product_name ~ '(汤圆)'  and product_name !~ '(ABC)';  
update product set category_code='04.2.2.6'  	where category_code is null and product_name ~ '(豆)'  and product_name !~ '(糕|饺|土)';
update product set category_code='16.0'  	where category_code is null and product_name ~ '(烧卖|虾饺)'  and product_name !~ '(ABC)';
update product set category_code='12.6.2'  	where category_code is null and product_name ~ '(酱)'  and product_name !~ '(拉面|酱面)';
update product set category_code='12.5.1' 	where category_code is null and product_name ~ '(汤)'  and product_name !~ '(ABC)';
update product set category_code='15.3'  	where category_code is null and product_name ~ '(鱼柳)' and  product_name !~ '(ABC)'; 
update product set category_code='01.6'  	where category_code is null and product_name ~ '(高达奶酪)' and  product_name !~ '(ABC)';
update product set category_code='01.3.1'  	where category_code is null and product_name ~ '(炼奶)' and  product_name !~ '(ABC)';
update product set category_code='07.1.3'  	where category_code is null and product_name ~ '(卷饼)'  and product_name !~ '(ABC)';
update product set category_code='11.2'  	where category_code is null and product_name ~ '(糖浆)'  and product_name !~ '(ABC)';
update product set category_code='06.4.2'  	where category_code is null and product_name ~ '(杜兰小麦)'  and product_name !~ '(ABC)';
update product set category_code='14.1.4.3'  	where category_code is null and product_name ~ '(热巧克力粉)'  and product_name !~ '(ABC)';            
update product set category_code='02.2.1.1'  	where category_code is null and product_name ~ '(黄油)'  and product_name !~ '(ABC)';
update product set category_code='02.1.2'  	where category_code is null and product_name ~ '(调.*油)'  and product_name !~ '(ABC)';
update product set category_code='02.1.2'   	where category_code is null and product_name ~ '(油)'  and product_name !~ '(浸|奶)';
update product set category_code='16.0'   	where category_code is null and product_name ~ '(云吞|饺)'  and product_name !~ '(ABC)';
update product set category_code='01.6' 	where category_code is null and product_name ~ '(奶酪)'  and product_name !~ '(蛋糕)';
update product set category_code='15.1' 	where category_code is null and product_name ~ '(玉米片)'  and product_name !~ '(ABC)';
update product set category_code='07.1.3' 	where category_code is null and product_name ~ '(薄饼|披萨饼)'  and product_name !~ '(ABC)';
update product set category_code='07.1.3' 	where category_code is null and product_name ~ '(黄玉米饼)' and product_name !~ '(ABC)';
update product set category_code='15.2' 	where category_code is null and product_name ~ '(饼)' and product_name !~ '(ABC)';
update product set category_code='07.1.1' 	where category_code is null and product_name ~ '(面包棍)' and product_name !~ '(ABC)';                     
update product set category_code='07.2.1' 	where category_code is null and product_name ~ '(蛋糕)' and product_name !~ '(纸袋)';                      
update product set category_code='NA' 		where category_code is null and product_name ~ '(碟|叉|杯|电镀|勺|彩色|羹)'  and product_name !~ '(ABC)'; 
update product set category_code='05.2' 	where category_code is null and product_name ~ '(星星糖)'  and product_name !~ '(ABC)';
update product set category_code='14.1.5' 	where category_code is null and product_name ~ '(茶)'  and product_name !~ '(ABC)';  
update product set category_code='01.6' 	where category_code is null and product_name ~ '(马苏里拉)'   and product_name !~ '(ABC)'; 
update product set category_code='06.4.2' 	where category_code is null and product_name ~ '(蛋面)'   and product_name !~ '(ABC)';
update product set category_code='15.1' 	where category_code is null and product_name ~ '(粟米片)'   and product_name !~ '(ABC)';
update product set category_code='NA' 		where category_code is null and product_type = '一般商品\麦西恩';
