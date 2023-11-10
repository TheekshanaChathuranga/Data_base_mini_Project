-- Create the StudentQuiz_Marks view

CREATE VIEW StudentQuiz_Marks AS
SELECT e.Student_id, e.Course_id, 
     ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Five_Percent_Average_Quiz_Score`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;