-- 코드를 입력하세요 
-- 즐겨찾기가 가장 많은 식당 정보 출력하기

SELECT FOOD_TYPE, rest_info.rest_id, REST_NAME, FAVORITES
from (
    select rest_id, max(favorites) as favor
    from rest_info
    group by food_type ) maxTable, rest_info
where maxTable.favor = rest_info.FAVORITES
group by food_type
order by food_type desc