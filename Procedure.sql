delimiter //
delimiter ;


-- Mid mark check procedure

CREATE PROCEDURE CheckStudentmidemarks (IN stuID VARCHAR(20))
BEGIN
SELECT DISTINCT * FROM StudentMidterm_Marks where Student_id=stuID;
END //

CALL  CheckStudentmidemarks('TG/2021/1011');



-- Assesment mark

CREATE PROCEDURE CalculateAdjustedAssessmentMarks(IN stuID VARCHAR(20))
BEGIN
   SELECT DISTINCT * FROM StudentAssessment_Marks where Student_id=stuID;
END //


CALL CalculateAdjustedAssessmentMarks('TG/2021/1011') ;


 -- Coruse GPA

 CREATE PROCEDURE courseGPA (IN stuID VARCHAR(20))
 BEGIN
SELECT * FROM  Student_GradePoint_For_Years WHERE Student_id=stuID;
END//

CALL courseGPA('TG/2021/1011') ;


CREATE PROCEDURE Final_GPA (IN stuID VARCHAR(20))
 BEGIN
SELECT DISTINCT Student_id,Grade_Point FROM  Student_GradePoint_For_Years WHERE Student_id=stuID;
END//

CALL Final_GPA('TG/2021/1011') ;



-- Final Gpa


CREATE PROCEDURE FinalGPA (IN stuID VARCHAR(20))
 BEGIN
SELECT Student_id,Grade_Point FROM Student_Final_GPA WHERE Student_id=stuID ;
END//

CALL FinalGPA('TG/2021/1011') ;