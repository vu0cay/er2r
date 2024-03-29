--C12
SELECT TEN_CTR 
FROM CGTRINH
WHERE KINH_PHI=(SELECT MAX(KINH_PHI) FROM CGTRINH);
--C16
SELECT HOTEN_KTS, SUM(THU_LAO)
FROM THIETKE
GROUP BY HOTEN_KTS HAVING SUM(THU_LAO) >25
-- C17
SELECT COUNT(*)
FROM (SELECT HOTEN_KTS, SUM(THU_LAO)
    FROM THIETKE
    GROUP BY HOTEN_KTS HAVING SUM(THU_LAO) >25) t
-- C22
SELECT TEN_CTR, DIACHI_CTR
FROM THAMGIA T JOIN CGTRINH C ON C.STT_CTR=T.STT_CTR
WHERE HOTEN_CN='nguyen hong van' AND 'DEC-18-1994' BETWEEN NGAY_TGIA AND NGAY_TGIA+SO_NGAY;
-- C23
SELECT HOTEN_KTS
FROM cgtrinh C JOIN THIETKE T ON C.STT_CTR=T.STT_CTR
WHERE c.ten_thau='phong dich vu so xd'
intersect
SELECT HOTEN_KTS
FROM cgtrinh C JOIN THIETKE T ON C.STT_CTR=T.STT_CTR
WHERE c.ten_thau='cty xd so 6';

SELECT HOTEN_KTS
FROM cgtrinh C JOIN THIETKE T ON C.STT_CTR=T.STT_CTR
WHERE c.ten_thau='phong dich vu so xd' and hoten_kts IN
        (SELECT HOTEN_KTS
        FROM cgtrinh C JOIN THIETKE T ON C.STT_CTR=T.STT_CTR
        WHERE c.ten_thau='cty xd so 6');
--C24
SELECT HOTEN_CN
FROM cgtrinh C JOIN THAMGIA T ON C.STT_CTR=T.STT_CTR
WHERE UPPER(c.tinh_thanh)= 'CAN THO'
MINUS
SELECT HOTEN_CN
FROM cgtrinh C JOIN THAMGIA T ON C.STT_CTR=T.STT_CTR
WHERE UPPER(c.tinh_thanh)= 'VINH LONG'

SELECT DISTINCT HOTEN_CN
FROM cgtrinh C JOIN THAMGIA T ON C.STT_CTR=T.STT_CTR
WHERE UPPER(c.tinh_thanh)= 'CAN THO' AND HOTEN_CN NOT IN
            (SELECT HOTEN_CN
            FROM cgtrinh C JOIN THAMGIA T ON C.STT_CTR=T.STT_CTR
            WHERE UPPER(c.tinh_thanh)= 'VINH LONG');
--C25
SELECT TEN_THAU
FROM CGTRINH
WHERE KINH_PHI > ALL --ANY   IN/NOT IN
        (SELECT KINH_PHI 
        FROM CGTRINH
        WHERE TEN_THAU='phong dich vu so xd');
SELECT TEN_THAU
FROM CGTRINH
WHERE KINH_PHI > --ALL --ANY   IN/NOT IN
        (SELECT MAX(KINH_PHI) 
        FROM CGTRINH
        WHERE TEN_THAU='phong dich vu so xd');
--C27
SELECT HOTEN_CN, SUM(SO_NGAY)
FROM THAMGIA
GROUP BY HOTEN_CN HAVING SUM(SO_NGAY)>
            (SELECT SUM(SO_NGAY)
            FROM THAMGIA
            WHERE HOTEN_CN='nguyen hong van');
--C28\

SELECT HOTEN_CN, COUNT(DISTINCT STT_ctr)
FROM THAMGIA
GROUP BY HOTEN_CN HAVING COUNT(DISTINCT STT_ctr)=(SELECT COUNT(*) FROM CGTRINH)
ORDER BY HOTEN_CN ;
--C30
SELECT DISTINCT C1.TEN_THAU, C2.TEN_THAU
FROM CGTRINH C1, CGTRINH C2
WHERE C1.TINH_THANH=C2.TINH_THANH AND C1.TEN_THAU > C2.TEN_THAU
--C31
SELECT T1.HOTEN_CN, T2.HOTEN_CN
FROM THAMGIA T1, THAMGIA T2
WHERE T1.STT_CTR=T2.STT_CTR AND T1.HOTEN_CN > T2.HOTEN_CN
GROUP BY T1.HOTEN_CN, T2.HOTEN_CN HAVING COUNT(DISTINCT T1.STT_CTR)>1

