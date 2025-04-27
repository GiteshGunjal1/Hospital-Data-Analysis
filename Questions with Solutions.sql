-- 1.Find all doctors who have treated a patient for “Diabetes.”

SELECT d.Doctor_ID, Illness, Patient_ID 
FROM DOCTOR d
JOIN DIAGNOSIS diag 
ON d.Doctor_ID = diag.Doctor_ID
WHERE diag.Illness = 'Diabetes';

-- 2.List the details of all patients who have been prescribed “B205.”

SELECT *FROM patient AS p
JOIN medication_prescribed AS m 
ON p.Patient_ID = m.Patient_ID
WHERE Medication_ID = 'B205';

-- 3.Find the total number of workers in each department.

SELECT d.Department_ID, COUNT(w.Worker_ID) AS Total_Workers
FROM DEPARTMENT d
JOIN DOCTOR doc ON d.Department_ID = doc.Department_ID
JOIN WORKER w ON doc.D_Worker_ID = w.Worker_ID
GROUP BY d.Department_ID;

-- 4.Retrieve the names and phone numbers of all patients who have been diagnosed with “Diabetes.”

SELECT p.fname, p.lname, telephone, Illness
FROM patient AS p
JOIN diagnosis AS d 
ON p.Patient_ID = d.Patient_ID
WHERE Illness = 'Diabetes';

-- 5.Get the names and IDs of all doctors who work in the “ER” department.

SELECT d.Doctor_ID, w.fname AS Doctor_Firstname, w.lname AS Doctor_Lastname
FROM doctor AS d
JOIN worker AS w 
ON d.D_Worker_ID = w.Worker_ID
WHERE Department_ID = 'ER';

-- 6.List all patients who had a test conducted with a positive result (Result = 1).

SELECT p.Patient_ID, p.fname, p.lname, t.Test_ID, t.Illness
FROM PATIENT p
JOIN TESTS t ON p.Patient_ID = t.Patient_ID
WHERE t.Result = 1;

-- 7.Find the total salary expenditure for all workers.

SELECT SUM(Salary) AS Total_Salary_Expenditure
FROM WORKER;

-- 8.List all cafeteria staff along with their job position and the food type served in their assigned cafeteria.

SELECT cs.Staff_ID, s.Job_Title, cs.Position, c.Food_Type
FROM CAFETERIA_STAFF cs
JOIN STAFF s ON cs.Staff_ID = s.Staff_ID
JOIN CAFETERIA c ON cs.Cafeteria_ID = c.Cafeteria_ID;

-- 9.Show details of patients along with the medication they are prescribed, even if no medication has been prescribed.

SELECT p.Patient_ID, p.fname, p.lname, p.Age, m.Medication_ID
FROM PATIENT as p
LEFT JOIN MEDICATION_PRESCRIBED as mp ON p.Patient_ID = mp.Patient_ID
LEFT JOIN MEDICATION as m ON mp.Medication_ID = m.Medication_ID;

-- 10.Find the average age of patients diagnosed with “Flu.”

SELECT *,AVG(p.Age) AS Average_Age
FROM PATIENT p
JOIN DIAGNOSIS diag ON p.Patient_ID = diag.Patient_ID
WHERE diag.Illness = 'Flu';