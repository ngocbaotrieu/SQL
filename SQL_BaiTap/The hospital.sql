SHOW databases;
CREATE database hospital;
USE hospital;
CREATE TABLE Physician (
  employee_id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  position VARCHAR(100) NOT NULL,
  ssn INTEGER NOT NULL
); 

CREATE TABLE Department (
  department_id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  head_id INTEGER NOT NULL,
  CONSTRAINT fk_headDept foreign key Department(head_id) REFERENCES Physician(employee_id)
);

CREATE TABLE Affiliated_with (
  physician_id INTEGER NOT NULL,
CONSTRAINT fk_affiliated_physician foreign key Affiliated_with(physician_id) REFERENCES Physician(employee_id),
  department_id INTEGER NOT NULL,
CONSTRAINT fk_affiliated_department foreign key Affiliated_with(department_id) REFERENCES Department(department_id),
  primary_affiliation BOOLEAN NOT NULL,
  PRIMARY KEY(physician_id, department_id)
);

CREATE TABLE Subclinical (
  code INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  Cost REAL NOT NULL
);

DROP TABLE `Procedure`;

CREATE TABLE Trained_in (
  physician_id INTEGER NOT NULL,
CONSTRAINT fk_trained_physician foreign key Trained_in(physician_id) REFERENCES Physician(employee_id),
  treatment_id INTEGER NOT NULL,
CONSTRAINT fk_trained_subclinical foreign key Trained_in(treatment_id) REFERENCES Subclinical(code),
  certification_date DATETIME NOT NULL,
  certification_expires DATETIME NOT NULL,
  PRIMARY KEY(physician_id, treatment_id)
);

CREATE TABLE Patient (
  ssn INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  insurance_id INTEGER NOT NULL,
  pcp INTEGER NOT NULL,  
  CONSTRAINT fk_physician_patient foreign key Patient(pcp) REFERENCES Physician(employee_id)
);  

CREATE TABLE Nurse (
  employee_id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  position VARCHAR(255) NOT NULL,
  registered BOOLEAN NOT NULL,
  ssn INTEGER NOT NULL
);

CREATE TABLE Appointment (
  appointment_id INTEGER PRIMARY KEY NOT NULL,
  patient_id INTEGER NOT NULL,
CONSTRAINT fk_appoitment_patient foreign key Appointment(patient_id) REFERENCES Patient(ssn),
  prep_nurse INTEGER,
CONSTRAINT fk_appoitment_nurse foreign key Appointment(prep_nurse) REFERENCES Nurse(employee_id),
  physician_id INTEGER NOT NULL,
CONSTRAINT fk_appoitment_physician foreign key Appointment(physician_id) REFERENCES Physician(employee_id),
  start DATETIME NOT NULL,
  end DATETIME NOT NULL,
  examination_room VARCHAR(255) NOT NULL
);

CREATE TABLE Medication (
  code INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  brand VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE Prescribes (
  physician_id INTEGER NOT NULL,
CONSTRAINT fk_prescribe_physician foreign key Prescribes(physician_id) REFERENCES Physician(employee_id),
  patient_id INTEGER NOT NULL,
CONSTRAINT fk_prescribe_patient foreign key Prescribes(patient_id) REFERENCES Patient(ssn),
  medication INTEGER NOT NULL,
CONSTRAINT fk_prescribe_medication foreign key Prescribes(medication) REFERENCES Medication(code),
  date DATETIME NOT NULL,
  appointment INTEGER,
CONSTRAINT fk_prescribe_appointment foreign key Prescribes(appointment) REFERENCES Appointment(appointment_id),
  dose VARCHAR(255) NOT NULL,
  PRIMARY KEY(physician_id, patient_id, medication, date)
);

CREATE TABLE Block (
  floor INTEGER NOT NULL,
  code INTEGER NOT NULL,
  PRIMARY KEY(Floor, Code)
); 

CREATE TABLE Room (
  number INTEGER PRIMARY KEY NOT NULL,
  type TEXT NOT NULL,
  block_floor INTEGER NOT NULL,
  block_code INTEGER NOT NULL,
  unavailable BOOLEAN NOT NULL,
  CONSTRAINT fk_floor_code foreign key Room(block_floor, block_code) REFERENCES Block(floor,code)
);

CREATE TABLE On_call (
  nurse_id INTEGER NOT NULL,
CONSTRAINT fk_oncall_nurse foreign key On_call(nurse_id) REFERENCES Nurse(employee_id),
  block_floor INTEGER NOT NULL,
  block_code INTEGER NOT NULL,
  start DATETIME NOT NULL,
  end DATETIME NOT NULL,
  PRIMARY KEY(nurse_id, block_floor, block_code, start, end),
  CONSTRAINT fk_floor_code_oncall foreign key On_call(block_floor, block_code) REFERENCES Block(floor,code)
);

CREATE TABLE Stay (
  stay_id INTEGER PRIMARY KEY NOT NULL,
  patient INTEGER NOT NULL,
CONSTRAINT fk_stay_patient foreign key Stay(patient) REFERENCES Patient(ssn),
  room INTEGER NOT NULL,
CONSTRAINT fk_stay_room foreign key Stay(room) REFERENCES Room(number),
  start DATETIME NOT NULL,
  end DATETIME NOT NULL
);

CREATE TABLE Undergoes (
  patient INTEGER NOT NULL,
CONSTRAINT fk_undergo_patient foreign key Undergoes(patient) REFERENCES Patient(ssn),
  subclinical INTEGER NOT NULL,
CONSTRAINT fk_undergo_subclinical foreign key Undergoes(subclinical) REFERENCES Subclinical(code),
  stay INTEGER NOT NULL,
CONSTRAINT fk_undergo_stay foreign key Undergoes(stay) REFERENCES Stay(stay_id),
  date DATETIME NOT NULL,
  physician INTEGER NOT NULL,
CONSTRAINT fk_undergo_physician foreign key Undergoes(physician) REFERENCES Physician(employee_id),
  assisting_nurse INTEGER,
CONSTRAINT fk_undergo_nurse foreign key Undergoes(assisting_nurse) REFERENCES Nurse(employee_id),
  PRIMARY KEY(patient, subclinical, stay, date)
);

INSERT INTO Physician VALUES(1,'John Dorian','Staff Internist',111111111);
INSERT INTO Physician VALUES(2,'Elliot Reid','Attending Physician',222222222);
INSERT INTO Physician VALUES(3,'Christopher Turk','Surgical Attending Physician',333333333);
INSERT INTO Physician VALUES(4,'Percival Cox','Senior Attending Physician',444444444);
INSERT INTO Physician VALUES(5,'Bob Kelso','Head Chief of Medicine',555555555);
INSERT INTO Physician VALUES(6,'Todd Quinlan','Surgical Attending Physician',666666666);
INSERT INTO Physician VALUES(7,'John Wen','Surgical Attending Physician',777777777);
INSERT INTO Physician VALUES(8,'Keith Dudemeister','MD Resident',888888888);
INSERT INTO Physician VALUES(9,'Molly Clock','Attending Psychiatrist',999999999);

INSERT INTO Department VALUES(1,'General Medicine',4);
INSERT INTO Department VALUES(2,'Surgery',7);
INSERT INTO Department VALUES(3,'Psychiatry',9);

INSERT INTO Affiliated_With VALUES(1,1,1);
INSERT INTO Affiliated_With VALUES(2,1,1);
INSERT INTO Affiliated_With VALUES(3,1,0);
INSERT INTO Affiliated_With VALUES(3,2,1);
INSERT INTO Affiliated_With VALUES(4,1,1);
INSERT INTO Affiliated_With VALUES(5,1,1);
INSERT INTO Affiliated_With VALUES(6,2,1);
INSERT INTO Affiliated_With VALUES(7,1,0);
INSERT INTO Affiliated_With VALUES(7,2,1);
INSERT INTO Affiliated_With VALUES(8,1,1);
INSERT INTO Affiliated_With VALUES(9,3,1);

INSERT INTO Subclinical VALUES(1,'Reverse Rhinopodoplasty',1500.0);
INSERT INTO Subclinical VALUES(2,'Obtuse Pyloric Recombobulation',3750.0);
INSERT INTO Subclinical VALUES(3,'Folded Demiophtalmectomy',4500.0);
INSERT INTO Subclinical VALUES(4,'Complete Walletectomy',10000.0);
INSERT INTO Subclinical VALUES(5,'Obfuscated Dermogastrotomy',4899.0);
INSERT INTO Subclinical VALUES(6,'Reversible Pancreomyoplasty',5600.0);
INSERT INTO Subclinical VALUES(7,'Follicular Demiectomy',25.0);

INSERT INTO Patient VALUES(100000001,'John Smith','42 Foobar Lane','555-0256',68476213,1);
INSERT INTO Patient VALUES(100000002,'Grace Ritchie','37 Snafu Drive','555-0512',36546321,2);
INSERT INTO Patient VALUES(100000003,'Random J. Patient','101 Omgbbq Street','555-1204',65465421,2);
INSERT INTO Patient VALUES(100000004,'Dennis Doe','1100 Foobaz Avenue','555-2048',68421879,3);

INSERT INTO Nurse VALUES(101,'Carla Espinosa','Head Nurse',1,111111110);
INSERT INTO Nurse VALUES(102,'Laverne Roberts','Nurse',1,222222220);
INSERT INTO Nurse VALUES(103,'Paul Flowers','Nurse',0,333333330);

INSERT INTO Appointment VALUES(13216584,100000001,101,1,'2008-04-24 10:00','2008-04-24 11:00','A');
INSERT INTO Appointment VALUES(26548913,100000002,101,2,'2008-04-24 10:00','2008-04-24 11:00','B');
INSERT INTO Appointment VALUES(36549879,100000001,102,1,'2008-04-25 10:00','2008-04-25 11:00','A');
INSERT INTO Appointment VALUES(46846589,100000004,103,4,'2008-04-25 10:00','2008-04-25 11:00','B');
INSERT INTO Appointment VALUES(59871321,100000004,NULL,4,'2008-04-26 10:00','2008-04-26 11:00','C');
INSERT INTO Appointment VALUES(69879231,100000003,103,2,'2008-04-26 11:00','2008-04-26 12:00','C');
INSERT INTO Appointment VALUES(76983231,100000001,NULL,3,'2008-04-26 12:00','2008-04-26 13:00','C');
INSERT INTO Appointment VALUES(86213939,100000004,102,9,'2008-04-27 10:00','2008-04-21 11:00','A');
INSERT INTO Appointment VALUES(93216548,100000002,101,2,'2008-04-27 10:00','2008-04-27 11:00','B');

INSERT INTO Medication VALUES(1,'Procrastin-X','X','N/A');
INSERT INTO Medication VALUES(2,'Thesisin','Foo Labs','N/A');
INSERT INTO Medication VALUES(3,'Awakin','Bar Laboratories','N/A');
INSERT INTO Medication VALUES(4,'Crescavitin','Baz Industries','N/A');
INSERT INTO Medication VALUES(5,'Melioraurin','Snafu Pharmaceuticals','N/A');

INSERT INTO Prescribes VALUES(1,100000001,1,'2008-04-24 10:47',13216584,'5');
INSERT INTO Prescribes VALUES(9,100000004,2,'2008-04-27 10:53',86213939,'10');
INSERT INTO Prescribes VALUES(9,100000004,2,'2008-04-30 16:53',NULL,'5');

INSERT INTO Block VALUES(1,1);
INSERT INTO Block VALUES(1,2);
INSERT INTO Block VALUES(1,3);
INSERT INTO Block VALUES(2,1);
INSERT INTO Block VALUES(2,2);
INSERT INTO Block VALUES(2,3);
INSERT INTO Block VALUES(3,1);
INSERT INTO Block VALUES(3,2);
INSERT INTO Block VALUES(3,3);
INSERT INTO Block VALUES(4,1);
INSERT INTO Block VALUES(4,2);
INSERT INTO Block VALUES(4,3);

INSERT INTO Room VALUES(101,'Single',1,1,0);
INSERT INTO Room VALUES(102,'Single',1,1,0);
INSERT INTO Room VALUES(103,'Single',1,1,0);
INSERT INTO Room VALUES(111,'Single',1,2,0);
INSERT INTO Room VALUES(112,'Single',1,2,1);
INSERT INTO Room VALUES(113,'Single',1,2,0);
INSERT INTO Room VALUES(121,'Single',1,3,0);
INSERT INTO Room VALUES(122,'Single',1,3,0);
INSERT INTO Room VALUES(123,'Single',1,3,0);
INSERT INTO Room VALUES(201,'Single',2,1,1);
INSERT INTO Room VALUES(202,'Single',2,1,0);
INSERT INTO Room VALUES(203,'Single',2,1,0);
INSERT INTO Room VALUES(211,'Single',2,2,0);
INSERT INTO Room VALUES(212,'Single',2,2,0);
INSERT INTO Room VALUES(213,'Single',2,2,1);
INSERT INTO Room VALUES(221,'Single',2,3,0);
INSERT INTO Room VALUES(222,'Single',2,3,0);
INSERT INTO Room VALUES(223,'Single',2,3,0);
INSERT INTO Room VALUES(301,'Single',3,1,0);
INSERT INTO Room VALUES(302,'Single',3,1,1);
INSERT INTO Room VALUES(303,'Single',3,1,0);
INSERT INTO Room VALUES(311,'Single',3,2,0);
INSERT INTO Room VALUES(312,'Single',3,2,0);
INSERT INTO Room VALUES(313,'Single',3,2,0);
INSERT INTO Room VALUES(321,'Single',3,3,1);
INSERT INTO Room VALUES(322,'Single',3,3,0);
INSERT INTO Room VALUES(323,'Single',3,3,0);
INSERT INTO Room VALUES(401,'Single',4,1,0);
INSERT INTO Room VALUES(402,'Single',4,1,1);
INSERT INTO Room VALUES(403,'Single',4,1,0);
INSERT INTO Room VALUES(411,'Single',4,2,0);
INSERT INTO Room VALUES(412,'Single',4,2,0);
INSERT INTO Room VALUES(413,'Single',4,2,0);
INSERT INTO Room VALUES(421,'Single',4,3,1);
INSERT INTO Room VALUES(422,'Single',4,3,0);
INSERT INTO Room VALUES(423,'Single',4,3,0);

INSERT INTO On_Call VALUES(101,1,1,'2008-11-04 11:00','2008-11-04 19:00');
INSERT INTO On_Call VALUES(101,1,2,'2008-11-04 11:00','2008-11-04 19:00');
INSERT INTO On_Call VALUES(102,1,3,'2008-11-04 11:00','2008-11-04 19:00');
INSERT INTO On_Call VALUES(103,1,1,'2008-11-04 19:00','2008-11-05 03:00');
INSERT INTO On_Call VALUES(103,1,2,'2008-11-04 19:00','2008-11-05 03:00');
INSERT INTO On_Call VALUES(103,1,3,'2008-11-04 19:00','2008-11-05 03:00');

INSERT INTO Stay VALUES(3215,100000001,111,'2008-05-01','2008-05-04');
INSERT INTO Stay VALUES(3216,100000003,123,'2008-05-03','2008-05-14');
INSERT INTO Stay VALUES(3217,100000004,112,'2008-05-02','2008-05-03');

INSERT INTO Undergoes VALUES(100000001,6,3215,'2008-05-02',3,101);
INSERT INTO Undergoes VALUES(100000001,2,3215,'2008-05-03',7,101);
INSERT INTO Undergoes VALUES(100000004,1,3217,'2008-05-07',3,102);
INSERT INTO Undergoes VALUES(100000004,5,3217,'2008-05-09',6,NULL);
INSERT INTO Undergoes VALUES(100000001,7,3217,'2008-05-10',7,101);
INSERT INTO Undergoes VALUES(100000004,4,3217,'2008-05-13',3,103);

INSERT INTO Trained_In VALUES(3,1,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(3,2,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(3,5,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(3,6,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(3,7,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(6,2,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(6,5,'2007-01-01','2007-12-31');
INSERT INTO Trained_In VALUES(6,6,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,1,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,2,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,3,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,4,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,5,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,6,'2008-01-01','2008-12-31');
INSERT INTO Trained_In VALUES(7,7,'2008-01-01','2008-12-31');

SELECT * FROM nurse
WHERE registered=1;

SELECT name FROM nurse
WHERE position='head nurse';

-- SELECT count(*) 
-- FROM patient JOIN appoitment ON patient_id=ssn 
-- WHERE ;

SELECT count(distinct(patient_id))
FROM appointment
WHERE physician_id IS NOT NULL;


SELECT COUNT(*) FROM
(SELECT DISTINCT(patient_id) -- , COUNT(physician_id) as no_phy, SUM(physician_id) as sum_phy
FROM appointment
-- WHERE physician_id IS NOT NULL;
GROUP BY patient_id HAVING COUNT(physician_id) >= 2) AS A;


SELECT block_floor, block_code
FROM room
WHERE number=212;

SELECT count(*)
FROM room
WHERE unavailable=0;

SELECT count(*)
FROM room
WHERE unavailable=1;

SELECT DISTINCT employee_id, name
FROM physician JOIN trained_in ON employee_id=physician_id;


SELECT  employee_id, name
FROM physician LEFT JOIN trained_in ON employee_id=physician_id
WHERE physician_id IS NULL;



--  SELECT employee_id, physician.name, subclinical.name
--  FROM (physician JOIN trained_in ON employee_id=physician_id ) JOIN subclinical ON treatment_id=code
--  ORDER BY physician.name;
 
 SELECT patient.name AS Patient_name, physician.name AS Physcian_name
 FROM patient JOIN physician ON pcp=employee_id;
 
 
 
 SELECT DISTINCT patient.name, physician.name, medication.name
 FROM (patient JOIN (prescribes JOIN physician ON physician_id=employee_id) ON patient_id=patient.ssn) JOIN medication ON medication=code;

 
 
 SELECT patient.name AS Patient_name, physician.name AS Physician_name, medication.name AS Medication_name
 FROM (prescribes JOIN (patient JOIN (appointment JOIN physician ON physician_id=employee_id) ON patient_id=patient.ssn) ON 
	  prescribes.appointment=appointment.appointment_id) JOIN medication ON prescribes.medication=medication.code;
 
 
 
 SELECT *
 FROM room;
 
 
 SELECT block_floor, count(*)
 FROM room
 WHERE unavailable=0
 GROUP BY block_floor;
 
 
 SELECT block_code, block_floor,count(*)
 FROM room
 WHERE unavailable=0
 GROUP BY block_code, block_floor;
 
 
 
 SELECT block_floor, count(*) as a
 FROM room
 WHERE unavailable=0
 GROUP BY block_floor
 ORDER BY a ASC -- DESC
 LIMIT 1;

SELECT * FROM
(SELECT block_floor, count(*) as a
 FROM room
 WHERE unavailable=0
 GROUP BY block_floor) AS B
WHERE a IN
(SELECT min(a) as min_a
FROM (SELECT block_floor, count(*) as a
 FROM room
 WHERE unavailable=0
 GROUP BY block_floor) AS A);

 SELECT block_floor, count(*)
 FROM room
 WHERE unavailable=0
 GROUP BY block_floor;
 
 SELECT employee_id, nurse.name, block.floor, block.code
 FROM nurse JOIN ( on_call JOIN block ON block_floor=floor AND block_code=code) ON nurse_id=employee_id
 
-- git sync exp


