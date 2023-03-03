-- 코드를 입력하세요
-- 헤비 유저가 소유한 장소
select places.id, places.name, places.host_id
from (
    SELECT HOST_ID, COUNT(host_id)
    from places
    group by host_id
    having count(host_id) >= 2) hostTable, places
where places.host_id = hostTable.host_id
order by places.id