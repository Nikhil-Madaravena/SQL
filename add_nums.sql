CREATE PROCEDURE add_nums(
    num1 IN NUMBER,
    num2 IN NUMBER,
    result OUT NUMBER
) IS
BEGIN
    result := num1 + num2;
END;
/