-- CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
-- AS
-- BEGIN
--     UPDATE Accounts
--     SET Balance = Balance + (Balance * 0.01)
--     WHERE AccountType = 'Savings';

--     COMMIT;

--     DBMS_OUTPUT.PUT_LINE('Monthly interest applied successfully.');
-- END;
-- /

-- CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
-- AS
-- BEGIN
--     UPDATE Employees
--     SET Salary = Salary + 5000;

--     COMMIT;

--     DBMS_OUTPUT.PUT_LINE('Employee bonus updated successfully.');
-- END;
-- /

-- CREATE OR REPLACE PROCEDURE TransferFunds(
--     fromAcc NUMBER,
--     toAcc NUMBER,
--     amount NUMBER
-- )
-- AS
-- BEGIN
--     UPDATE Accounts
--     SET Balance = Balance - amount
--     WHERE AccountID = fromAcc;

--     UPDATE Accounts
--     SET Balance = Balance + amount
--     WHERE AccountID = toAcc;

--     COMMIT;

--     DBMS_OUTPUT.PUT_LINE('Funds transferred successfully.');
-- END;
-- /