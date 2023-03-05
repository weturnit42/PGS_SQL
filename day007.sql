-- 코드를 입력하세요
-- 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기

select month(start_date) as month, car_id, count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where car_id in (
    SELECT car_id
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where month(start_date) between 8 and 10
    group by car_id
    having count(*) >= 5
    order by car_id) and month(start_date) between 8 and 10
group by month, car_id
order by month asc, car_id desc

# select *
# from CAR_RENTAL_COMPANY_RENTAL_HISTORY
# where month(start_date) = 8 or 9 or 10
# group by car_id, month(start_date)
# having c