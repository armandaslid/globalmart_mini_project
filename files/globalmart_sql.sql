-- total_sales_revenue

SELECT
  ROUND(SUM(SALES), 0) AS total_sales_revenue
FROM
  sales_data_sample
;


-- number_of_orders

SELECT
  COUNT(DISTINCT ORDERNUMBER) AS number_of_orders
FROM
  sales_data_sample
;


-- average_order_value

SELECT
  ROUND(SUM(SALES), 0) / COUNT(DISTINCT ORDERNUMBER) AS average_order_value
FROM
  sales_data_sample
;


-- sales_trend_over_time

SELECT
  CONCAT(year_id, '-', LPAD(month_id, 2, '0')) AS month
  ,ROUND(SUM(SALES), 0) AS total_sales
FROM sales_data_sample
GROUP BY
  month
ORDER BY
  month
;


-- top_orders_by_sales

SELECT
  ORDERNUMBER AS order_number
  ,ROUND(SUM(SALES), 0) AS total_sales
FROM
  sales_data_sample
GROUP BY 1
ORDER BY 2 DESC
;


-- regional_performance

SELECT
  TERRITORY AS region
  ,ROUND(SUM(SALES), 0) AS total_sales
FROM
  sales_data_sample
GROUP BY
  TERRITORY
ORDER BY
  total_sales DESC
;


-- top_selling_products

SELECT
  PRODUCTCODE AS product
  ,ROUND(SUM(SALES), 0) AS total_sales
FROM
  sales_data_sample
GROUP BY
  1
ORDER BY
  2 DESC
;
