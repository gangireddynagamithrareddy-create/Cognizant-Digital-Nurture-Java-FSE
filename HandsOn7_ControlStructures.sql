-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 12345;
--     reverse_num NUMBER := 0;
--     remainder NUMBER;
-- BEGIN
--     WHILE num > 0 LOOP
--         remainder := MOD(num, 10);
--         reverse_num := reverse_num * 10 + remainder;
--         num := TRUNC(num / 10);
--     END LOOP;

--     DBMS_OUTPUT.PUT_LINE('Reversed Number = ' || reverse_num);
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 12345;
--     count_digits NUMBER := 0;
-- BEGIN
--     WHILE num > 0 LOOP
--         num := TRUNC(num / 10);
--         count_digits := count_digits + 1;
--     END LOOP;

--     DBMS_OUTPUT.PUT_LINE('Number of Digits = ' || count_digits);
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     first_num NUMBER := 0;
--     second_num NUMBER := 1;
--     next_num NUMBER;
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');

--     FOR i IN 1..10 LOOP
--         DBMS_OUTPUT.PUT_LINE(first_num);
--         next_num := first_num + second_num;
--         first_num := second_num;
--         second_num := next_num;
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 17;
--     i NUMBER;
--     isPrime BOOLEAN := TRUE;
-- BEGIN
--     IF num <= 1 THEN
--         isPrime := FALSE;
--     ELSE
--         FOR i IN 2..TRUNC(SQRT(num)) LOOP
--             IF MOD(num, i) = 0 THEN
--                 isPrime := FALSE;
--                 EXIT;
--             END IF;
--         END LOOP;
--     END IF;

--     IF isPrime THEN
--         DBMS_OUTPUT.PUT_LINE(num || ' is a Prime Number');
--     ELSE
--         DBMS_OUTPUT.PUT_LINE(num || ' is Not a Prime Number');
--     END IF;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     total NUMBER := 0;
-- BEGIN
--     FOR i IN 1..10 LOOP
--         total := total + i;
--     END LOOP;

--     DBMS_OUTPUT.PUT_LINE('Sum = ' || total);
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 5;
-- BEGIN
--     FOR i IN 1..10 LOOP
--         DBMS_OUTPUT.PUT_LINE(num || ' x ' || i || ' = ' || (num * i));
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 5;
--     fact NUMBER := 1;
-- BEGIN
--     FOR i IN 1..num LOOP
--         fact := fact * i;
--     END LOOP;

--     DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' = ' || fact);
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 1;
-- BEGIN
--     <<start_loop>>
--     DBMS_OUTPUT.PUT_LINE('Number: ' || num);
--     num := num + 1;

--     IF num <= 5 THEN
--         GOTO start_loop;
--     END IF;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- BEGIN
--     FOR i IN 1..10 LOOP
--         CONTINUE WHEN MOD(i, 2) = 0;
--         DBMS_OUTPUT.PUT_LINE('Odd Number: ' || i);
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     counter NUMBER := 1;
-- BEGIN
--     LOOP
--         DBMS_OUTPUT.PUT_LINE('Counter: ' || counter);
--         counter := counter + 1;

--         IF counter > 10 THEN
--             EXIT;
--         END IF;
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     dayNumber NUMBER := 3;
-- BEGIN
--     CASE dayNumber
--         WHEN 1 THEN
--             DBMS_OUTPUT.PUT_LINE('Monday');
--         WHEN 2 THEN
--             DBMS_OUTPUT.PUT_LINE('Tuesday');
--         WHEN 3 THEN
--             DBMS_OUTPUT.PUT_LINE('Wednesday');
--         WHEN 4 THEN
--             DBMS_OUTPUT.PUT_LINE('Thursday');
--         WHEN 5 THEN
--             DBMS_OUTPUT.PUT_LINE('Friday');
--         WHEN 6 THEN
--             DBMS_OUTPUT.PUT_LINE('Saturday');
--         WHEN 7 THEN
--             DBMS_OUTPUT.PUT_LINE('Sunday');
--         ELSE
--             DBMS_OUTPUT.PUT_LINE('Invalid Day');
--     END CASE;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     age NUMBER := 20;
--     hasLicense CHAR(1) := 'Y';
-- BEGIN
--     IF age >= 18 THEN
--         IF hasLicense = 'Y' THEN
--             DBMS_OUTPUT.PUT_LINE('Eligible to drive');
--         ELSE
--             DBMS_OUTPUT.PUT_LINE('License required');
--         END IF;
--     ELSE
--         DBMS_OUTPUT.PUT_LINE('Not eligible to drive');
--     END IF;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     i NUMBER := 1;
-- BEGIN
--     LOOP
--         DBMS_OUTPUT.PUT_LINE('Iteration: ' || i);
--         i := i + 1;

--         EXIT WHEN i > 5;
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- BEGIN
--     FOR i IN REVERSE 1..5 LOOP
--         DBMS_OUTPUT.PUT_LINE('Iteration: ' || i);
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     i NUMBER := 1;
-- BEGIN
--     WHILE i <= 5 LOOP
--         DBMS_OUTPUT.PUT_LINE('Iteration: ' || i);
--         i := i + 1;
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- BEGIN
--     FOR i IN 1..5 LOOP
--         DBMS_OUTPUT.PUT_LINE('Iteration: ' || i);
--     END LOOP;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     marks NUMBER := 85;
-- BEGIN
--     IF marks >= 90 THEN
--         DBMS_OUTPUT.PUT_LINE('Grade: A');
--     ELSIF marks >= 75 THEN
--         DBMS_OUTPUT.PUT_LINE('Grade: B');
--     ELSIF marks >= 50 THEN
--         DBMS_OUTPUT.PUT_LINE('Grade: C');
--     ELSE
--         DBMS_OUTPUT.PUT_LINE('Grade: F');
--     END IF;
-- END;
-- /

-- SET SERVEROUTPUT ON;

-- DECLARE
--     num NUMBER := 10;
-- BEGIN
--     IF MOD(num, 2) = 0 THEN
--         DBMS_OUTPUT.PUT_LINE(num || ' is Even');
--     ELSE
--         DBMS_OUTPUT.PUT_LINE(num || ' is Odd');
--     END IF;
-- END;
-- /