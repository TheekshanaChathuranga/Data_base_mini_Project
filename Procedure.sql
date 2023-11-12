delimiter //
delimiter ;


-- Mid mark check procedure

CREATE PROCEDURE CheckStudentmidemarks (IN stuID VARCHAR(20))
BEGIN
SELECT DISTINCT * FROM StudentMidterm_Marks where Student_id=stuID;
END //

CALL  CheckStudentmidemarks('TG/2021/1011');





CREATE PROCEDURE CalculateAdjustedAssessmentMarks(IN stuID VARCHAR(20))
BEGIN
    CREATE OR REPLACE VIEW StudentAssessment_Marks AS
    SELECT DISTINCT e.Student_id, e.Course_id, 
        (e.Assessments * 0.05) AS Adjusted_Assessment_Mark
    FROM exam_marks e
    INNER JOIN student s ON e.Student_id = s.Student_id
    where Student_id=stuID;
END //

CALL CalculateAdjustedAssessmentMarks('TG/2021/1011') ;


 

