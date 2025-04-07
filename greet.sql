CREATE PROCEDURE greet IS
    greeting_message VARCHAR2(100);
BEGIN
    greeting_message := 'Hello, World!';
    DBMS_OUTPUT.PUT_LINE(greeting_message);
END;
/

-- for execution run this in commandLine
-- EXECUTE greet;