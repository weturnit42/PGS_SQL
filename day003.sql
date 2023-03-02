-- 코드를 입력하세요
# SELECT book.category, book_sales.book_id, count(book_sales.book_id) as TOTAL_SALES
# from BOOK_SALES, book
# where book_sales.book_id = book.book_id
# group by book_sales.book_id

SELECT CATEGORY, sum(category) as TOTAL_SALES
from BOOK_SALES, book
where book_sales.book_id = book.book_id and month(SALES_DATE) = 1 and year(SALES_DATE) = 2022
group by category
order by category asc