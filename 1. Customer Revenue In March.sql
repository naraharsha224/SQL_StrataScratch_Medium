/*
https://platform.stratascratch.com/coding/9782-customer-revenue-in-march?code_type=5

Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
Output the revenue along with the customer id and sort the results based on the revenue in descending order.
*/

-- Solution

SELECT cust_id,
       SUM(total_order_cost) AS revenue
FROM ORDERS
WHERE DATEPART(MONTH, order_date)=03 AND
      DATEPART(YEAR, order_date)=2019
GROUP BY cust_id
ORDER BY revenue DESC
