CREATE OR REPLACE FUNCTION hitung_angka4 (p1 varchar(10), p3 INT[])
RETURNS INT
AS $$
DECLARE p2 int;
BEGIN
    IF p1 = 'tambah' THEN
    p2=0;
        FOR i IN 1 .. array_upper(p3,1)
        LOOP
            p2 = p2+p3[i];
        END LOOP;
    RETURN p2;
    END IF;

    IF p1 = 'kurang' THEN
    p2=0;
        FOR i IN 1 .. array_upper(p3,1)
        LOOP
            p2 = p2-p3[i];
        END LOOP;
    RETURN p2;
    END IF;

    IF p1 = 'kali' THEN
    p2=0;
        FOR i IN 1 .. array_upper(p3,1)
        LOOP
            p2 = p2*p3[i];
        END LOOP;
    RETURN p2;
    END IF;

    IF p1 = 'bagi' THEN
    p2=0;
        FOR i IN 1 .. array_upper(p3,1)
        LOOP
            p2 = p2/p3[i];
        END LOOP;
    RETURN p2;
    END IF;

END; $$
LANGUAGE 'plpgsql'

--select * from hitung_angka4('tambah',array[1,2,3]);
--select * from hitung_angka4('kurang',array[1,2,3]);
--select * from hitung_angka4('kali',array[1,2,3]);
--select * from hitung_angka4('bagi',array[1,2,3]);