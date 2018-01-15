CREATE OR REPLACE FUNCTION GetSallary (pOperator VARCHAR(30), pSalary NUMERIC,pId INTEGER)
	RETURNS TABLE(
        fullname VARCHAR (255),
        salary NUMERIC,
    	employee_id INTEGER
    )
	AS $$
	BEGIN
    IF pOperator = 'lebih_kecil'  THEN
		RETURN QUERY
        SELECT 
        	(e.first_name|| ' '||e.last_name)::VARCHAR(255) AS fullname,
            e.salary, e.employee_id
        FROM 
        	employees e
        WHERE
        	e.salary < pSalary and e.employee_id=pId;
    END IF;
    IF pOperator = 'lebih_besar'  THEN
		RETURN QUERY
        SELECT 
        	(e.first_name|| ' '||e.last_name)::VARCHAR(255) AS fullname,
            e.salary,e.employee_id
        FROM 
        	employees e
        WHERE
        	e.salary > pSalary and e.employee_id=pId;
      END IF;
      IF pOperator = 'sama_dengan'  THEN
		RETURN QUERY
        SELECT 
        	(e.first_name|| ' '||e.last_name)::VARCHAR(255) AS fullname,
            e.salary,e.employee_id 
        FROM 
        	employees e
        WHERE
        	e.salary = pSalary and e.employee_id=pId;
      END IF;
END; $$
LANGUAGE 'plpgsql'

--select * from getsallary('lebih_besar', 11000, 100)