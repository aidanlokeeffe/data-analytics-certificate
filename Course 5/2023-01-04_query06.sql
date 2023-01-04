SELECT
  warehouse.warehouse_id,
  CONCAT(warehouse.state,": ",warehouse.warehouse_alias) AS warehouse_name,
  COUNT(orders.order_id) AS number_of_orders,
  (
    SELECT
      COUNT(*)
    FROM
      warehouse_orders.orders AS orders
  ) AS total_orders,
  CASE
    WHEN 
      COUNT(orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.orders orders) <= 0.20
      THEN "fulfulled 0-20% of orders"
    WHEN 
      COUNT(orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.orders orders) > .20
      AND COUNT(orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.orders orders) <= 0.6
      THEN "fulfulled 21-60% of orders"
    ELSE
      "fulfulled 61-100% of orders"
    END AS fulfillment_summary
FROM 
  warehouse_orders.warehouse AS warehouse
  LEFT JOIN
  warehouse_orders.orders AS orders
  ON
  orders.warehouse_id = warehouse.warehouse_id
GROUP BY
  warehouse.warehouse_id,
  warehouse_name
HAVING
    COUNT(orders.order_id) > 0


/*
SELECT *
--FROM warehouse_orders.orders
FROM warehouse_orders.warehouse
*/