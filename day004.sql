-- 코드를 입력하세요
SELECT ORDER_ID, PRODUCT_ID, date_format(OUT_DATE,'%Y-%m-%d') as OUT_DATE, if(OUT_DATE <= '2022-05-01', '출고완료', if(OUT_DATE > '2022-05-01', '출고대기', IFNULL(OUT_DATE, '출고미정'))) as '출고여부'
from FOOD_ORDER
order by order_id asc