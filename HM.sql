-- SELECT ship_country
-- FROM orders
-- WHERE ship_country LIKE 'U%'

-- SELECT order_id, customer_id, freight, ship_country
-- FROM orders
-- WHERE ship_country LIKE 'N%'
-- ORDER BY freight DESC
-- LIMIT 10

-- SELECT last_name, first_name, home_phone, region
-- FROM employees 
-- WHERE region IS NULL

-- SELECT COUNT(customer_id)
-- FROM orders
-- WHERE ship_region IS NOT NULL


-- SELECT country, COUNT(*)
-- FROM suppliers
-- GROUP BY country
-- ORDER BY COUNT(*) DESC

SELECT ship_country, SUM(freight)
FROM orders
WHERE ship_region IS NOT NULL
GROUP BY ship_country
HAVING SUM(freight) > 2750
ORDER BY SUM(freight) DESC



-- inner join показывает только те записи для которых нашли пары
-- left join выведет все записи из первой таблицы, а для не найденых пар второй расставит значени null
-- right join выведет все записи из второй таблицы, а для не найденных пар первой расставит значение NULL
-- outher join выводит все записи из обеих таблиц
