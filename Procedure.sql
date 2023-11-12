CREATE PROCEDURE CheckStudentmidemarks (IN stuID VARCHAR(20))
BEGIN
SELECT * FROM StudentMidterm_Marks where Student_id=stuID;
END;


