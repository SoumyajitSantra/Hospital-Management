
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100)
);


CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    dob DATE,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address TEXT
);


CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason_for_visit TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


CREATE TABLE Treatments (
    treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    diagnosis TEXT,
    treatment_description TEXT,
    prescription TEXT,
    date_of_treatment DATE,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);


INSERT INTO Doctors (first_name, last_name, specialty, phone_number, email)
VALUES 
('S', 'Roy', 'Cardiologist', '123-456-7890', 's.roy@hospital.com'),
('S', 'Santra', 'Neurologist', '987-654-3210', 's.santra@hospital.com');


INSERT INTO Patients (first_name, last_name, gender, dob, phone_number, email, address)
VALUES 
('Alice', 'Roy', 'Female', '1985-06-12', '555-0100', 'alice.roy@email.com', '123 Main St'),
('Bob', 'Santra', 'Male', '1992-09-20', '555-0200', 'bob.santra@email.com', '456 Oak St');


INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit)
VALUES 
(1, 1, '2025-05-15', '10:00:00', 'Heart Checkup'),
(2, 2, '2025-05-16', '14:00:00', 'Neurological Examination');


INSERT INTO Treatments (appointment_id, diagnosis, treatment_description, prescription, date_of_treatment)
VALUES 
(1, 'Hypertension', 'Medication prescribed for blood pressure', 'Beta Blockers', '2025-05-15'),
(2, 'Migraine', 'MRI scan recommended, prescribed pain relief', 'Ibuprofen', '2025-05-16');


SELECT * FROM Doctors;
SELECT * FROM Patients;
SELECT * FROM Appointments;
SELECT * FROM Treatments;
