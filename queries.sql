SELECT * FROM Patients;

SELECT doctor_id, COUNT(*) AS total_appointments
FROM Appointments
GROUP BY doctor_id;

SELECT status, COUNT(*) 
FROM Appointments
GROUP BY status;

SELECT p.name, t.diagnosis, t.treatment_date
FROM Patients p
JOIN Treatments t ON p.patient_id = t.patient_id;

SELECT payment_status, COUNT(*) 
FROM Billing
GROUP BY payment_status;
