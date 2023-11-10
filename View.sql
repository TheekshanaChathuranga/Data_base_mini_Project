--01 Create the StudentQuiz_Marks view 5%

CREATE VIEW StudentQuiz_Marks AS
SELECT e.Student_id, e.Course_id, 
     ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Average Quiz Score`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;


SELECT * FROM StudentQuiz_Marks;

--02 Create the StudentAssessment_Marks view with a 5% adjusted assessment mark
CREATE VIEW StudentAssessment_Marks AS
SELECT e.Student_id, e.Course_id, 
    (e.Assesments * 0.05) AS `Adjusted_Assessment_Mark`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;

SELECT * FROM StudentAssessment_Marks;



--03 Create the StudentMidterm_Marks view with 20% weighted MidPractical and MidTheory scores

CREATE VIEW StudentMidterm_Marks AS
SELECT e.Student_id, e.Course_id, 
    ((e.Mid_mark) * 0.20) AS `Mid_Mark`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;


SELECT * FROM StudentMidterm_Marks;


--04 Create the Student_All_Marks view  


CREATE VIEW Student_All_Marks AS
SELECT e.Student_id, e.Course_id,
             ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Quiz_Score` ,
             (e.Assesments * 0.05) AS `Assessment_Mark` ,
             ((e.Mid_mark) * 0.20) AS `MidMark`
     FROM exam_marks e
     INNER JOIN student s ON e.Student_id = s.Student_id;

SELECT * FROM Student_All_Marks;



--05 Create the StudentCA_Marks view  

CREATE VIEW StudentCA_Marks AS
SELECT e.Student_id, e.Course_id,
       ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Quiz_Score`,
       (e.Assesments * 0.05) AS `Assessment_Mark`,
       ((e.Mid_mark) * 0.20) AS `MidMark`,
       ((
           ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 +
           (e.Assesments * 0.05) +
           ((e.Mid_mark) * 0.20)
       )) as `CA_Marks`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;


SELECT * FROM StudentCA_Marks;



--06 Create the StudentCA_Marks_With_Eligibility view 


CREATE VIEW StudentCA_Marks_With_Eligibility AS
SELECT e.Student_id, e.Course_id,
    ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 AS `Quiz_Score`,
    (e.Assesments * 0.05) AS `Assessment_Mark`,
    ((e.Mid_mark) * 0.20) AS `MidMark`,
    (
        ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 +
        (e.Assesments * 0.05) +
        ((e.Mid_mark) * 0.20)
    ) as `CA_Marks`,
    CASE
        WHEN (
            ((e.quiz1 + e.quiz2 + e.quiz3 - LEAST(e.quiz1, LEAST(e.quiz2, e.quiz3))) / 2) * 0.05 +
            (e.Assesments * 0.05) +
            ((e.Mid_mark) * 0.20)
        ) >= 15 THEN 'Eligible'
        ELSE 'Not_Eligible'
    END AS `Eligibility_Status`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;


SELECT * FROM StudentCA_Marks_With_Eligibility;


--07 Create the StudentEnd_Marks view with a 70% adjusted assessment mark


CREATE VIEW StudentEnd_Marks AS
SELECT e.Student_id, e.Course_id, 
    ((e.Mid_mark ) * 0.70) AS `EndMark`
FROM exam_marks e
INNER JOIN student s ON e.Student_id = s.Student_id;


SELECT * FROM StudentEnd_Marks;


--08 Create the StudentFinal_Marks view

create view StudentFinal_Marks AS
SELECT e.Student_id, e.Course_id,  
    (c.CA_Marks + e.EndMark) as FinalMark
from studentca_marks_with_eligibility c, studentend_marks e 
where c.Eligibility_Status = 'Eligible' and 
c.Student_id = e.Student_id and
c.Course_id = e.Course_id ;

SELECT * FROM StudentFinal_Marks;



--09 create the StudentGradePoint view


create view StudentGradePoint AS 
select  Student_id, Course_id,
   case
      when(FinalMark>= 85 and FinalMark<= 100) then 'A+'
      when(FinalMark>= 80 and FinalMark<= 84.999999) then 'A'
      when(FinalMark>= 75 and FinalMark<= 79.999999) then 'A-'
      when(FinalMark>= 70 and FinalMark<= 74.999999) then 'B+'
      when(FinalMark>= 65 and FinalMark<= 69.999999) then 'B'
      when(FinalMark>= 60 and FinalMark<= 64.999999) then 'B-'
      when(FinalMark>= 55 and FinalMark<= 59.999999) then 'C+'
      when(FinalMark>= 50 and FinalMark<= 54.999999) then 'C'
      when(FinalMark>= 45 and FinalMark<= 49.999999) then 'C-'
      when(FinalMark>= 40 and FinalMark<= 44.999999) then 'D+'
      when(FinalMark>= 35 and FinalMark<= 39.999999) then 'D'
      when(FinalMark>= 0 and FinalMark<= 34.999999) then 'F'
      ELSE 'Not_Valid'
   end   AS 'Grade' ,

  case
      when(FinalMark>= 85 and FinalMark<= 100) then 4.0
      when(FinalMark>= 80 and FinalMark<= 84.999999) then 4.0
      when(FinalMark>= 75 and FinalMark<= 79.999999) then 3.7
      when(FinalMark>= 70 and FinalMark<= 74.999999) then 3.3
      when(FinalMark>= 65 and FinalMark<= 69.999999) then 3.0
      when(FinalMark>= 60 and FinalMark<= 64.999999) then 2.7
      when(FinalMark>= 55 and FinalMark<= 59.999999) then 2.3
      when(FinalMark>= 50 and FinalMark<= 54.999999) then 2.0
      when(FinalMark>= 45 and FinalMark<= 49.999999) then 1.7
      when(FinalMark>= 40 and FinalMark<= 44.999999) then 1.3
      when(FinalMark>= 35 and FinalMark<= 39.999999) then 1.0
      when(FinalMark>= 0 and FinalMark<= 34.999999) then 0
      ELSE 'Not_Valid'
   end   AS 'Grade_Point'

from studentfinal_marks;


SELECT * FROM  StudentGradePoint;




--10 create the StudentGradePoint view with repeater marks reduced


create view Student_GradePoint_For_Years AS 
SELECT Student_id, Course_id, 
    CASE
        WHEN Student_id LIKE 'TG/2021/%' THEN
            CASE
                WHEN FinalMark >= 85 AND FinalMark <= 100 THEN 'A+'
                WHEN FinalMark >= 80 AND FinalMark <= 84.999999 THEN 'A'
                WHEN FinalMark >= 75 AND FinalMark <= 79.999999 THEN 'A-'
                WHEN FinalMark >= 70 AND FinalMark <= 74.999999 THEN 'B+'
                WHEN FinalMark >= 65 AND FinalMark <= 69.999999 THEN 'B'
                WHEN FinalMark >= 60 AND FinalMark <= 64.999999 THEN 'B-'
                WHEN FinalMark >= 55 AND FinalMark <= 59.999999 THEN 'C+'
                WHEN FinalMark >= 50 AND FinalMark <= 54.999999 THEN 'C'
                WHEN FinalMark >= 45 AND FinalMark <= 49.999999 THEN 'C-'
                WHEN FinalMark >= 40 AND FinalMark <= 44.999999 THEN 'D+'
                WHEN FinalMark >= 35 AND FinalMark <= 39.999999 THEN 'D'
                WHEN FinalMark >= 0 AND FinalMark <= 34.999999 THEN 'F'
                ELSE 'Not_Valid'
            END
        ELSE
            CASE
                WHEN FinalMark >= 85 AND FinalMark <= 100 THEN 'C'
                WHEN FinalMark >= 80 AND FinalMark <= 84.999999 THEN 'C'
                WHEN FinalMark >= 75 AND FinalMark <= 79.999999 THEN 'C'
                WHEN FinalMark >= 70 AND FinalMark <= 74.999999 THEN 'C'
                WHEN FinalMark >= 65 AND FinalMark <= 69.999999 THEN 'C'
                WHEN FinalMark >= 60 AND FinalMark <= 64.999999 THEN 'C'
                WHEN FinalMark >= 55 AND FinalMark <= 59.999999 THEN 'C'
                WHEN FinalMark >= 50 AND FinalMark <= 54.999999 THEN 'C'
                WHEN FinalMark >= 45 AND FinalMark <= 49.999999 THEN 'C-'
                WHEN FinalMark >= 40 AND FinalMark <= 44.999999 THEN 'D+'
                WHEN FinalMark >= 35 AND FinalMark <= 39.999999 THEN 'D'
                WHEN FinalMark >= 0 AND FinalMark <= 34.999999 THEN 'F'
                ELSE 'Not_Valid'
            END
    END AS 'Grade',
    
    CASE
        WHEN Student_id LIKE 'TG/2021/%' THEN
            CASE
                WHEN FinalMark >= 85 AND FinalMark <= 100 THEN 4.0
                WHEN FinalMark >= 80 AND FinalMark <= 84.999999 THEN 4.0
                WHEN FinalMark >= 75 AND FinalMark <= 79.999999 THEN 3.7
                WHEN FinalMark >= 70 AND FinalMark <= 74.999999 THEN 3.3
                WHEN FinalMark >= 65 AND FinalMark <= 69.999999 THEN 3.0
                WHEN FinalMark >= 60 AND FinalMark <= 64.999999 THEN 2.7
                WHEN FinalMark >= 55 AND FinalMark <= 59.999999 THEN 2.3
                WHEN FinalMark >= 50 AND FinalMark <= 54.999999 THEN 2.0
                WHEN FinalMark >= 45 AND FinalMark <= 49.999999 THEN 1.7
                WHEN FinalMark >= 40 AND FinalMark <= 44.999999 THEN 1.3
                WHEN FinalMark >= 35 AND FinalMark <= 39.999999 THEN 1.0
                WHEN FinalMark >= 0 AND FinalMark <= 34.999999 THEN 0
                ELSE 'Not_Valid'
            END
        ELSE
            CASE
                WHEN FinalMark >= 85 AND FinalMark <= 100 THEN 2.0
                WHEN FinalMark >= 80 AND FinalMark <= 84.999999 THEN 2.0
                WHEN FinalMark >= 75 AND FinalMark <= 79.999999 THEN 2.0
                WHEN FinalMark >= 70 AND FinalMark <= 74.999999 THEN 2.0
                WHEN FinalMark >= 65 AND FinalMark <= 69.999999 THEN 2.0
                WHEN FinalMark >= 60 AND FinalMark <= 64.999999 THEN 2.0
                WHEN FinalMark >= 55 AND FinalMark <= 59.999999 THEN 2.0
                WHEN FinalMark >= 50 AND FinalMark <= 54.999999 THEN 2.0
                WHEN FinalMark >= 45 AND FinalMark <= 49.999999 THEN 1.7
                WHEN FinalMark >= 40 AND FinalMark <= 44.999999 THEN 1.3
                WHEN FinalMark >= 35 AND FinalMark <= 39.999999 THEN 1.0
                WHEN FinalMark >= 0 AND FinalMark <= 34.999999 THEN 0
                ELSE 'Not_Valid'
            END
    END AS 'Grade_Point'
FROM studentfinal_marks;


SELECT * FROM  Student_GradePoint_For_Years;
