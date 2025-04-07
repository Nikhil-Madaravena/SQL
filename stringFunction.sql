DECLARE
    str VARCHAR2(100) := 'Hello, World!';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Original String: ' || str);
    DBMS_OUTPUT.PUT_LINE('String Length: ' || LENGTH(str));
    DBMS_OUTPUT.PUT_LINE('Uppercase String: ' || UPPER(str));
    DBMS_OUTPUT.PUT_LINE('Lowercase String: ' || LOWER(str));
    DBMS_OUTPUT.PUT_LINE('Substring (1, 5): ' || SUBSTR(str, 1, 5));
    DBMS_OUTPUT.PUT_LINE('Position of "World": ' || INSTR(str, 'World'));
    DBMS_OUTPUT.PUT_LINE('String Concatenation: ' || str || ' - Oracle SQL');
    DBMS_OUTPUT.PUT_LINE('String Replacement: ' || REPLACE(str, 'World', 'Oracle'));
    DBMS_OUTPUT.PUT_LINE('String Trimming: ' || TRIM('   Hello, World!   '));
    DBMS_OUTPUT.PUT_LINE('String Padding: ' || LPAD(str, 20, '*'));
END;
/
