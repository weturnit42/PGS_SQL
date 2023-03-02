-- 코드를 입력하세요
(SELECT car_id, '대여중' as AVAILABILITY
from (    
    SELECT car_id
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where if('2022-10-16' between start_date and end_date or end_date = '2022-10-16', '대여중', '대여 가능') = '대여중') sub)
    
union

(SELECT car_id, '대여 가능' as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where car_id not in (
    SELECT car_id
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where if('2022-10-16' between start_date and end_date or end_date = '2022-10-16', '대여중', '대여 가능') = '대여중')
group by car_id)

order by car_id desc

# datediff(end_date, '2022-10-16') >= 0 and datediff(start_date, '2022-10-16') < 0
#