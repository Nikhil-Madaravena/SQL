DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 20;
    result NUMBER;
BEGIN
    add_nums(num1, num2, result);
    DBMS_OUTPUT.PUT_LINE('The sum is: ' || result);
END;
/