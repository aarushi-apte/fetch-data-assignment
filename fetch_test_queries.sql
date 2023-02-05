-- Query 1: Which brand saw the most dollars spent in the month of June?
SELECT SUM(TOTAL_FINAL_PRICE) AS AMOUNT_SPENT, brands.NAME FROM receipt_items
INNER JOIN receipts ON receipt_items.REWARDS_RECEIPT_ID = receipts.ID
INNER JOIN brands ON receipt_items.BRAND_CODE = brands.BRAND_CODE
WHERE MONTH(receipts.PURCHASE_DATE) = 6
GROUP BY brands.NAME
ORDER BY AMOUNT_SPENT DESC 
LIMIT 1;


-- Query 2: Which user spent the most money in the month of August?
SELECT users.ID, SUM(receipts.TOTAL_SPENT) AS TOTAL FROM users
INNER JOIN receipts ON users.ID = receipts.USER_ID
WHERE MONTH(receipts.PURCHASE_DATE) = 8
GROUP BY users.ID
ORDER BY TOTAL DESC
LIMIT 1;


-- Query 3: What user bought the most expensive item?
SELECT users.ID , CAST((receipt_items.TOTAL_FINAL_PRICE / receipt_items.QUANTITY_PURCHASED) as DECIMAL(7,2)) AS PRICE
FROM users
INNER JOIN receipts ON users.ID = receipts.USER_ID
INNER JOIN receipt_items ON receipts.ID = receipt_items.REWARDS_RECEIPT_ID
ORDER BY PRICE DESC
LIMIT 1;


-- Query 4: What is the name of the most expensive item purchased?
SELECT DESCRIPTION, (TOTAL_FINAL_PRICE/QUANTITY_PURCHASED) AS PRICE FROM receipt_items
ORDER BY PRICE DESC
LIMIT 1;


-- Query 5: How many users scanned in each month?
SELECT DISTINCT COUNT(user_id) FROM receipts
GROUP BY MONTH(DATE_SCANNED);