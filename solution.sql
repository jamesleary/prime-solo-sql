-- 0 Select users from Chicago;
SELECT * FROM syntax_practice WHERE "city" = 'chicago';

--0 Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice
WHERE "username" LIKE '%a%';

--0 The bank is giving a new customer bonus! Update all records
--0 with an account balance of 0.00 and a transactions_attempted of 0.
--0 Give them a new account balance of 10.00.
UPDATE "syntax_practice"

SET "account_balance" = '10.00'
WHERE "transactions_completed" = '0'  AND "transactions_attempted" = '0';

--0 Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice
WHERE "transactions_attempted" > '9';

--0 Get the username and account balance of the 3 users with the highest balances,
--0 sort highest to lowest balance. NOTE: Research LIMIT
SELECT "username", "account_balance" FROM syntax_practice
ORDER BY "account_balance" DESC LIMIT '3';

--0 Get the username and account balance of the 3 users with the lowest balances,
--0 sort lowest to highest balance.
SELECT "username", "account_balance" FROM syntax_practice
ORDER BY "account_balance" ASC LIMIT '3';

--0 Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice
WHERE account_balance >100;

--0 Add a records
INSERT INTO "syntax_practice" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('jleary', 'woodbury', 10, 10, 500.00);

--0 The bank is losing money in Miami and Phoenix and needs to unload low transaction customers:
--0 Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM "syntax_practice"
WHERE ("city" = 'miami' OR "city" = 'phoenix') AND "transactions_completed" < 5;
