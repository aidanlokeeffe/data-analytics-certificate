SELECT 
  warehouse.state as state,
  COUNT(DISTINCT order_id) as num_orders
FROM 
  warehouse_orders.warehouse AS warehouse
JOIN
  warehouse_orders.orders AS orders
ON
  warehouse.warehouse_id = orders.warehouse_id
GROUP BY
  warehouse.state


/*
SELECT 
  COUNT(DISTINCT warehouse.state) as num_states
FROM 
  warehouse_orders.warehouse AS warehouse
JOIN
  warehouse_orders.orders AS orders
ON
  warehouse.warehouse_id = orders.warehouse_id
*/


/*
SELECT 
  orders.*,
  warehouse.warehouse_alias,
  warehouse.state
FROM 
  warehouse_orders.warehouse AS warehouse
JOIN
  warehouse_orders.orders AS orders
ON
  warehouse.warehouse_id = orders.warehouse_id
*/

/*
SELECT *
FROM
  warehouse_orders.orders
LIMIT 100
*/

/*
SELECT *
FROM
  warehouse_orders.warehouse
*/