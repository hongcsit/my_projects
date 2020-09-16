SELECT *
FROM CUSTOMER
WHERE CUST_ZIP = '12345';

SELECT *
FROM ACCOUNT
WHERE CUST_ID IN (3003);


SELECT *
FROM ACCOUNT
WHERE CUST_ID IN
(SELECT CUST_ID
FROM CUSTOMER
WHERE CUST_ZIP = '12345');

/*The subquery returns all CUST_ID that have the CUST_ZIP 12345
while the outer query selects all columns whose CUST_ZIP is in the result
set returned from the subquery.*/


SELECT ACC_TYPE, ACC_BALANCE, SUM(ACC_BALANCE)
FROM ACCOUNT
WHERE ACC_BALANCE > 1000
GROUP BY ACC_TYPE
HAVING SUM(ACC_BALANCE) > 15000;

/*This query returns the data from ACC_TYPE, ACC_BALANCE, and the sum of
ACC_BALANCE in the ACCOUNT table whose ACC_BALANCE is over 1000 but has
a balance sum of over 15000, then groups by ACC_TYPE, which in this case is
only the savings(S) account. This query is different from previous queries
because it illustrates the uses of where, group by, and having clauses in
one select statement containing an aggregate function.*/


SELECT DISTINCT (ACC_BALANCE-500) AS MONTHLY_BANK_STATEMENT, BRANCH_ID
FROM ACCOUNT, BANK_BRANCH;

SELECT DISTINCT (ACC_BALANCE-500) AS MONTHLY_BANK_STATEMENT, CUSTOMER.CUST_LAST, CUST_FIRST
FROM ACCOUNT, CUSTOMER;