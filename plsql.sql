
DECLARE
    name VARCHAR2(100) := 'John Doe';
    age NUMBER := 30;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name: ' ||name);
    DBMS_OUTPUT.PUT_LINE('Age: ' ||age);
END;
/