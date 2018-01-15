CREATE OR REPLACE FUNCTION get_employees(paramName varchar(255),paramName1 varchar(255))
  RETURNS TABLE(
      First_name varchar (20),
      Last_name varchar (20)
  )
  AS $$
  BEGIN
    RETURN QUERY
        SELECT e.first_name, e.last_name FROM employees e WHERE e.first_name LIKE paramName and e.last_name LIKE paramName1;
  END; $$
  LANGUAGE 'plpgsql'

  --select * from get_employees ('A%', 'B%')