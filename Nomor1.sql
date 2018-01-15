CREATE OR REPLACE FUNCTION hitung_angka (p1 INT, p2 INT, p3 INT)
RETURNS NUMERIC
AS $$
BEGIN 
RETURN p1+p2+p3;
END; $$
LANGUAGE 'plpgsql'

--select hitung_angka(2,4,6)