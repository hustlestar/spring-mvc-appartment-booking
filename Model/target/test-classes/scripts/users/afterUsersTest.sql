DECLARE
BEGIN
  FOR r1 IN ( SELECT 'DROP ' || object_type || ' ' || object_name || DECODE ( object_type, 'TABLE', ' CASCADE CONSTRAINTS PURGE' ) AS v_sql
                FROM user_objects
               WHERE object_type IN ( 'TABLE', 'VIEW', 'PACKAGE', 'TYPE', 'PROCEDURE', 'FUNCTION', 'TRIGGER', 'SEQUENCE' )
               ORDER BY object_type,
                        object_name ) LOOP
    EXECUTE IMMEDIATE r1.v_sql;
  END LOOP;
END;
/