UPDATE Patient
SET Address = 'KU, Karachi'  
WHERE PatientID = (SELECT LoginID FROM LoginTable WHERE Email = 'XYZ@gmail.com');

UPDATE Patient
SET Address = 'UOK, Karachi'  
WHERE PatientID = (SELECT LoginID FROM LoginTable WHERE Email = 'ABC@gmail.com');

UPDATE Patient
SET Address = 'UoK, Karachi'  
WHERE PatientID = (SELECT LoginID FROM LoginTable WHERE Email = 'DEF@gmail.com');

SELECT * FROM Patient WHERE Address IN ('XYZ@gmail.com', 'ABC@gmail.com', 'DEF@gmail.com');

--DOCTOR INSERTIONS
UPDATE Doctor
SET Address = 'Waterpump, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'farhan@gmail.com');

UPDATE Doctor
SET Address = 'Gulshan, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'kashan@gmail.com');

UPDATE Doctor
SET Address = 'Hassan Square, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'hassaan@gmail.com');

UPDATE Doctor
SET Address = 'Hussainabad, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'haris@gmail.com');

UPDATE Doctor
SET Address = 'Nazimabad, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'talha@gmail.com');

UPDATE Doctor
SET Address = 'Garden, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'shariq@gmail.com');

UPDATE Doctor
SET Address = 'Saddar, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'awais@gmail.com');

UPDATE Doctor
SET Address = 'Scheme33, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'alvi@gmail.com');

UPDATE Doctor
SET Address = 'Jhohar, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'saifi@gmail.com');

UPDATE Doctor
SET Address = 'Nepa, Karachi'  
WHERE DoctorID = (SELECT LoginID FROM LoginTable WHERE Email = 'mansha@gmail.com');
