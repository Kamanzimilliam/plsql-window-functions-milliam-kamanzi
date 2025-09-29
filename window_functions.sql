-- 1. Check schema: List all tables in the current user
SELECT table_name FROM user_tables ORDER BY table_name;

-- 2. View all customers
SELECT * FROM customers;

-- 3. View all equipment
SELECT * FROM equipment;

-- 4. View all rentals
SELECT * FROM rentals;

-- 5. View all maintenance records
SELECT * FROM maintenance;

-- 6. Ranking: Top N customers by total rental revenue
SELECT
  c.customer_id,
  c.name,
  SUM(r.amount) AS total_revenue,
  ROW_NUMBER() OVER (ORDER BY SUM(r.amount) DESC) AS row_num,
  RANK() OVER (ORDER BY SUM(r.amount) DESC) AS rank_num,
  DENSE_RANK() OVER (ORDER BY SUM(r.amount) DESC) AS dense_rank_num,
  ROUND(PERCENT_RANK() OVER (ORDER BY SUM(r.amount) DESC), 2) AS percent_rank
FROM
  customers c
  JOIN rentals r ON c.customer_id = r.customer_id
GROUP BY
  c.customer_id, c.name;

-- 7. Ranking: Top 5 equipment by region (RANK)
SELECT region, equipment_id, SUM(amount) AS total_revenue,
       RANK() OVER (PARTITION BY region ORDER BY SUM(amount) DESC) AS equipment_rank
FROM customers
JOIN rentals ON customers.customer_id = rentals.customer_id
GROUP BY region, equipment_id;

-- 8. Aggregate: Running monthly rental totals (SUM OVER)
SELECT equipment_id, rental_date, amount,
       SUM(amount) OVER (PARTITION BY equipment_id ORDER BY rental_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM rentals;

-- 9. Aggregate: AVG, MIN, MAX for rental trends (frame comparison)
SELECT
  r.customer_id,
  r.rental_date,
  r.amount,
  AVG(r.amount) OVER (PARTITION BY r.customer_id ORDER BY r.rental_date RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_avg_range,
  MIN(r.amount) OVER (PARTITION BY r.customer_id ORDER BY r.rental_date) AS min_amount,
  MAX(r.amount) OVER (PARTITION BY r.customer_id ORDER BY r.rental_date) AS max_amount
FROM
  rentals r;

-- 10. Navigation: Month-over-month growth (LAG)
SELECT equipment_id, rental_date, amount,
       NVL(LAG(amount) OVER (PARTITION BY equipment_id ORDER BY rental_date), 0) AS prev_amount,
       CASE
         WHEN LAG(amount) OVER (PARTITION BY equipment_id ORDER BY rental_date) IS NULL THEN 0
         ELSE ROUND((amount - LAG(amount) OVER (PARTITION BY equipment_id ORDER BY rental_date)) / NULLIF(LAG(amount) OVER (PARTITION BY equipment_id ORDER BY rental_date), 0) * 100, 2)
       END AS growth_percent
FROM rentals;

-- 11. Navigation: Next month's rental amount (LEAD)
SELECT equipment_id, rental_date, amount,
       LEAD(amount) OVER (PARTITION BY equipment_id ORDER BY rental_date) AS next_amount
FROM rentals;

-- 12. Distribution: Customer quartiles (NTILE)
SELECT customer_id, SUM(amount) AS total_spend,
       NTILE(4) OVER (ORDER BY SUM(amount) DESC) AS spend_quartile
FROM rentals
GROUP BY customer_id;

-- 13. Distribution: CUME_DIST for customer spend
SELECT customer_id, SUM(amount) AS total_spend,
  ROUND(CUME_DIST() OVER (ORDER BY SUM(amount) DESC), 2) AS cumulative_dist
FROM rentals
GROUP BY customer_id;

-- 14. Aggregate: 3-month moving average maintenance cost (AVG OVER)
SELECT equipment_id, maintenance_date, cost,
       AVG(cost) OVER (PARTITION BY equipment_id ORDER BY maintenance_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg_cost
FROM maintenance;

-- 15. Ranking: DENSE_RANK for equipment revenue
SELECT equipment_id, SUM(amount) AS total_revenue,
       DENSE_RANK() OVER (ORDER BY SUM(amount) DESC) AS dense_rank
FROM rentals
GROUP BY equipment_id;

-- 16. Aggregate: MAX rental amount per equipment
SELECT equipment_id, MAX(amount) AS max_rental
FROM rentals
GROUP BY equipment_id;

-- 17. Aggregate: Total maintenance cost per equipment
SELECT equipment_id, SUM(cost) AS total_maintenance_cost
FROM maintenance
GROUP BY equipment_id;

-- 18. Window: Partitioned rental count per customer (COUNT OVER)
SELECT customer_id, rental_date, amount,
       COUNT(*) OVER (PARTITION BY customer_id) AS rental_count_per_customer
FROM rentals;

-- 19. Window: First rental date per equipment (FIRST_VALUE OVER)
SELECT equipment_id, rental_date, amount,
       FIRST_VALUE(rental_date) OVER (PARTITION BY equipment_id ORDER BY rental_date) AS first_rental_date
FROM rentals;

-- 20. Window: Last maintenance cost per equipment (LAST_VALUE OVER)
SELECT equipment_id, maintenance_date, cost,
       LAST_VALUE(cost) OVER (PARTITION BY equipment_id ORDER BY maintenance_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_maintenance_cost
FROM maintenance;