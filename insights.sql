SELECT d.department_name, COUNT(*) AS visits
FROM Appointments a
JOIN Doctors doc ON a.doctor_id = doc.doctor_id
JOIN Departments d ON doc.department_id = d.department_id
GROUP BY d.department_name
ORDER BY visits DESC;

SELECT doctor_id, COUNT(*) AS total
FROM Appointments
GROUP BY doctor_id
ORDER BY total DESC;

SELECT * FROM Billing
WHERE payment_status = 'Pending';

SELECT patient_id, SUM(amount) AS total
FROM Billing
GROUP BY patient_id
ORDER BY total DESC;
