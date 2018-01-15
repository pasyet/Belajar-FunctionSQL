CREATE OR REPLACE FUNCTION GetSallary (pOperator VARCHAR(30), pSalary NUMERIC)
	RETURNS TABLE(
        fullname VARCHAR (255),
        salary NUMERIC)
	AS $$
	BEGIN
    IF pOperator = 'lebih_kecil'  THEN
		RETURN QUERY
        SELECT 
        	(e.first_name|| ' '||e.last_name)::VARCHAR(255) AS fullname,
            e.salary
        FROM 
        	employees e
        WHERE
        	e.salary < pSalary;
    END IF;
    IF pOperator = 'lebih_besar'  THEN
		RETURN QUERY
        SELECT 
        	(e.first_name|| ' '||e.last_name)::VARCHAR(255) AS fullname,
            e.salary
        FROM 
        	employees e
        WHERE
        	e.salary > pSalary;
      END IF;
      IF pOperator = 'sama_dengan'  THEN
		RETURN QUERY
        SELECT 
        	(e.first_name|| ' '||e.last_name)::VARCHAR(255) AS fullname,
            e.salary
        FROM 
        	employees e
        WHERE
        	e.salary = pSalary;
      END IF;
END; $$
LANGUAGE 'plpgsql'

--select * from GetSallary('sama_dengan', 11000);