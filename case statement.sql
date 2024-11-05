
CREATE DATABASE output;
USE output;

CREATE TABLE grade (
    studentid INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    studentName NVARCHAR(50),
     english INT,
     math INT,
     phy INT,
     chem INT,
     urdu INT,
     Isl INT,
     Pst INT
);

select*from grade

INSERT INTO grade VALUES ('zara', 70, 85, 75, 85, 65, 85, 60);

SELECT 
    studentid, studentName, english, math, phy, chem, urdu, Isl, Pst,700 AS TotalMarks,
	 (english + math + phy + chem + urdu + Isl + Pst) AS ObtainedMarks,
   
    CASE 
        WHEN (english + math + phy + chem + urdu + Isl + Pst) >= 520 THEN '80%'
        WHEN (english + math + phy + chem + urdu + Isl + Pst) >= 480 THEN '75%'
        WHEN (english + math + phy + chem + urdu + Isl + Pst) >= 300 THEN '65%'
     
        ELSE 'D'
    END

FROM grade;
