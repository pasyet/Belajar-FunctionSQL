CREATE OR REPLACE FUNCTION hitung_angka2 (p1 varchar(10), p2 INT, p3 INT )
RETURNS NUMERIC
AS $$
BEGIN 
IF p1 = 'tambah'  THEN
		RETURN p2+p3;
    END IF;
IF p1 = 'kurang'  THEN
		RETURN p2-p3;
    END IF;
IF p1 = 'kali'  THEN
		RETURN p2*p3;
    END IF;
IF p1 = 'bagi'  THEN
		RETURN p2/p3;
    END IF;
END; $$
LANGUAGE 'plpgsql'

--select * from  hitung_angka('tambah',10,5)