

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable VALUES ('admin@clinic.com' ,'admin' ,   3)


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists. They are trusted cardiologist known for their compassionate care and expert treatment of cardiovascular conditions.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. With a focus on patient well-being and cutting-edge techniques.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('farhan@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('kashan@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('hassaan@gmail.com', 'abc',2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('haris@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('alvi@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('talha@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('shariq@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('awais@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('saifi@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('mansha@gmail.com', 'abc', 2)

INSERT INTO LoginTable(Email, Password, Type) VALUES('ABC@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('DEF@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('XYZ@gmail.com', 'abc', 1)



--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'farhan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Farhan Shoukat', '030020310', 'Waterpump, Karachi', '4-12-1996', 'M', 1, 2500, 30000, 4, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'kashan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'KASHAN', '030020311', 'Gulshan, Karachi', '12-12-1996', 'M', 1, 3000, 25000, 3.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'hassaan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'HASSAAN', '030020312', 'Hassan Square, Karachi', '12-12-1996', 'M', 1, 1500, 20000, 5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'haris@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'HARIS MUNEER', '0300203103', 'Hussainabad, Karachi', '05-04-1990', 'M', 1, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'talha@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Talha MUNEER', '030020314', 'Nazimabad, Karachi', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'shariq@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Shariq MUNEER', '030020315', 'Garden, Karachi', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'awais@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Awais MUNEER', '030020316', 'Saddar, Karachi', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'alvi@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Alvi', '030020317', 'Scheme33, Karachi', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'saifi@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Saifi', '030020318', 'Jhohar, Karachi', '05-04-1990', 'M', 4, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'mansha@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Mansha', '030020319', 'Nepa, Karachi', '05-04-1990', 'M', 5, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)


--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'ABC', '030020320', 'UOK, Karachi', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'DEF', '030020321', 'Uok, Karachi', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='XYZ@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'XYZ', '030020322', 'KU, Karachi', '4-4-1996', 'M')


select * from OtherStaff

insert into OtherStaff values ('Javed', '030020323','Iqbal Town, Karachi', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Hamza', '030020324','Iqbal Town, Karachi', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kashan', '030020325','Iqbal Town, Karachi', 'Security', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Alio', '030020326','Iqbal Town, Karachi', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kaleem', '030020327','Iqbal Town, Karachi', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Ali', '030020328','Iqbal Town, Karachi', 'Guard', 'M', '05-04-1990', 'Matric',5000)






--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

/*
select * from Patient
select * from Doctor
select * from LoginTable
select * from Department
*/