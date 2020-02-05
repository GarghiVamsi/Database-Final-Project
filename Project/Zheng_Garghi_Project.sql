Create table Driving_School (
    drivingschool_id int NOT NULL,
    city varchar2(64) NOT NULL,
    state varchar2(64) NOT NULL,
    manager_name varchar2(64) NOT NULL,
    PRIMARY KEY (drivingschool_id)
);
    Insert into Driving_School Values(1, 'Duluth', 'MN', 'William');
    Insert into Driving_School Values(2, 'Duluth', 'GA', 'John');
    Insert into Driving_School Values(3, 'Winona', 'MN', 'Keith');
    Insert into Driving_School Values(4, 'Shakopee', 'KS', 'Roy');
    Insert into Driving_School Values(5, 'Bloomington', 'CA', 'Vamsi');
    Insert into Driving_School Values(6, 'Eden Prairie', 'AL', 'Jack');
    Insert into Driving_School Values(7, 'Egaan', 'MI', 'Tahir');
    Insert into Driving_School Values(8, 'Apple Valley', 'CT', 'Grant');
    Insert into Driving_School Values(9, 'Blain', 'DE', 'Danny');
    Insert into Driving_School Values(10, 'LakeVille', 'FL', 'Teddy');
    Insert into Driving_School Values(11, 'Mankato', 'GA', 'Taylor');
    Insert into Driving_School Values(12, 'St.Cloud', 'NC', 'Dinesh');
    Insert into Driving_School Values(13, 'Edina', 'ND', 'Ben');
    Insert into Driving_School Values(14, 'BurnsVille', 'TX', 'Daniella');
    Insert into Driving_School Values(15, 'MapleGrove', 'UT', 'Jess');


Create Table Instructor (
    instructor_ssn int NOT NULL,
    instructor_name varchar2(64),
    city varchar2(64),
    state varchar2(64),
    license_number int,
    license_state varchar2(64),
    Expeired_license date,
    drivingschool_id int NOT NULL,
    PRIMARY KEY (instructor_ssn),
    FOREIGN KEY(drivingschool_id) REFERENCES Driving_School(drivingschool_id) ON DELETE CASCADE
);
    Insert into Instructor Values(711, 'William', 'Duluth', 'MN', 1234, 'MN',TO_DATE('01/01/2019', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(911, 'Jasmine', 'Duluth', 'MN', 0987, 'MN',TO_DATE('02/02/2019', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(696, 'Lawrence', 'Duluth', 'MN', 4450, 'MN',TO_DATE('01/01/2019', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(420, 'Jack', 'Duluth', 'MN', 7790, 'MN',TO_DATE('09/06/2018', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(342, 'Mike', 'Duluth', 'MN', 1800, 'MN',TO_DATE('01/01/2019', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(560, 'Ben', 'Duluth', 'MN', 1590, 'MN',TO_DATE('07/20/2018', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(889, 'Madelyn', 'Duluth', 'MN', 1670, 'MN',TO_DATE('05/20/2017', 'MM/DD/YYYY'),1);
    Insert into Instructor Values(912, 'Alex', 'Duluth', 'GA', 1499, 'GA',TO_DATE('02/02/2017', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(667, 'Khloe', 'Duluth', 'GA', 7890, 'GA',TO_DATE('03/014/2017', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(480, 'Kim', 'Duluth', 'GA', 0111, 'GA',TO_DATE('05/03/2019', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(290, 'Poppy', 'Duluth', 'GA', 0202, 'GA',TO_DATE('06/020/2017', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(160, 'Johnson', 'Duluth', 'GA', 1919, 'GA',TO_DATE('05/11/2018', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(680, 'Melvin', 'Duluth', 'GA', 1818, 'GA',TO_DATE('10/10/2015', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(777, 'Zack', 'Duluth', 'GA', 1717, 'GA',TO_DATE('01/26/2018', 'MM/DD/YYYY'),2);
    Insert into Instructor Values(888, 'Zeke', 'Duluth', 'GA', 1717, 'GA',TO_DATE('01/29/2017', 'MM/DD/YYYY'),2);


Create Table Phone (
    phone_number int NOT NULL,
    instructor_ssn int NOT NULL,
    PRIMARY KEY (phone_number, instructor_ssn),
    FOREIGN KEY(instructor_ssn) REFERENCES Instructor(instructor_ssn) ON DELETE CASCADE
);
    Insert into Phone Values (123456789, 711);
    Insert into Phone Values (278390182, 911);
    Insert into Phone Values (578902837, 696);
    Insert into Phone Values (201928375, 420);
    Insert into Phone Values (901827364, 342);
    Insert into Phone Values (887162549, 560);
    Insert into Phone Values (904328756, 889);
    Insert into Phone Values (189203847, 912);
    Insert into Phone Values (901854463, 667);
    Insert into Phone Values (348920176, 480);
    Insert into Phone Values (908765425, 290);
    Insert into Phone Values (198726453, 160);
    Insert into Phone Values (982345674, 680);
    Insert into Phone Values (463789820, 777);
    Insert into Phone Values (478390123, 888);


Create Table Student (
    Stein_ID varchar2(64) NOT NULL,
    name varchar2(64),
    Birth_Day date,
    phone int,
    city varchar2(64),
    state varchar2(64),
    drivingschool_id int NOT NULL,
    instructor_ssn int NOT NULL,
    hasGuardian varchar2(64),
    PRIMARY KEY (Stein_ID),
    FOREIGN KEY(instructor_ssn) REFERENCES Instructor(instructor_ssn) ON DELETE CASCADE,
    FOREIGN KEY(drivingschool_id) REFERENCES Driving_school(drivingschool_id) ON DELETE CASCADE,
    CHECK(hasGuardian = 'Yes' OR hasGuardian = 'No')
);

    Insert into Student Values('S711','Kevin', TO_DATE('03/03/2003', 'MM/DD/YYYY'), 882256743, 'Duluth','MN', 1, 711, 'Yes');
    Insert into Student Values('S911','Calvin', TO_DATE('04/04/2003', 'MM/DD/YYYY'), 220192857, 'Duluth','MN', 1, 711, 'Yes');
    Insert into Student Values('S140','Sai', TO_DATE('02/28/2003', 'MM/DD/YYYY'), 901748562, 'Duluth','MN',1, 711, 'Yes');
    Insert into Student Values('S690','Jose', TO_DATE('05/18/2002', 'MM/DD/YYYY'), 808025483, 'Duluth','MN',1, 711, 'Yes');
    Insert into Student Values('S555','Ryan', TO_DATE('05/22/2004', 'MM/DD/YYYY'), 440821954, 'Duluth','MN',1, 711, 'Yes');
    Insert into Student Values('S890','Jack', TO_DATE('03/03/2005', 'MM/DD/YYYY'), 889956743, 'Duluth','GA', 2, 911, 'Yes');
    Insert into Student Values('S190','Ben', TO_DATE('04/10/2004', 'MM/DD/YYYY'), 220199257, 'Duluth','GA', 2, 911, 'Yes');
    Insert into Student Values('S081','John', TO_DATE('02/20/2003', 'MM/DD/YYYY'), 901748062, 'Duluth','GA',2, 911, 'Yes');
    Insert into Student Values('S881','Walter', TO_DATE('05/18/2003', 'MM/DD/YYYY'), 801105483, 'Duluth','GA',2, 911, 'Yes');
    Insert into Student Values('S678','Heather', TO_DATE('01/02/1998', 'MM/DD/YYYY'), 440991654, 'Duluth','GA',2, 911, 'No');


Create Table Vehicle(
    vin varchar2(64) NOT NULL,
    make varchar2(64),
    vehicle_model varchar2(64),
    color varchar2(64),
    license_plate varchar2(64),
    date_lastrepair date,
    drivingschool_id int NOT NULL,
    PRIMARY KEY (vin),
        FOREIGN KEY(drivingschool_id) REFERENCES Driving_School(drivingschool_id) ON DELETE CASCADE
);

    INSERT INTO Vehicle VALUES('S543XD', 'Toyota', 'Corolla', 'Brown', 'XD69X', TO_DATE('02/20/2016', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('F94kIS', 'Mazda', '3', 'Black', 'FlP10', TO_DATE('06/10/2008', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('FQ904R', 'Honda', 'CRV', 'Grey', 'LO19D', TO_DATE('10/20/2009', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('TT45UI', 'BMW', '3 Series', 'Black', 'FP10S', TO_DATE('08/15/2019', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('XAQ32I', 'Benz', 'C-Class', 'Red', 'SD7SD', TO_DATE('11/25/2018', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('S543XD', 'Honda', 'Accord', 'Brown', 'HS98Y', TO_DATE('02/22/2016', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('F94kIS', 'Toyota', '3', 'Black', 'LP00P', TO_DATE('06/10/2009', 'MM/DD/YYYY'), 2);
    INSERT INTO Vehicle VALUES('FQ904R', 'Subaru', 'Series 3', 'GREY', 'XH092', TO_DATE('10/20/2010', 'MM/DD/YYYY'), 2);
    INSERT INTO Vehicle VALUES('TT45UI', 'Ferrari', 'Aventador', 'Black', 'HH091', TO_DATE('08/15/2017', 'MM/DD/YYYY'), 1);
    INSERT INTO Vehicle VALUES('XAQ32I', 'Ford', '', 'Fiesta', '09HS6', TO_DATE('11/25/2018', 'MM/DD/YYYY'), 2);

Create Table Lesson (
    lesson_id int NOT NULL,
    date_lesson date,
    stein_id varchar2(64)NOT NULL,
    instructor_ssn int NOT NULL,
    PRIMARY KEY (lesson_id),
    FOREIGN KEY(instructor_ssn) REFERENCES Instructor(instructor_ssn) ON DELETE CASCADE,
        FOREIGN KEY(stein_id) REFERENCES Student(Stein_ID) ON DELETE CASCADE
);

    Insert into Lesson Values(10001, TO_DATE('07/15/2019', 'MM/DD/YYYY'), 'S711', 711);
    Insert into Lesson Values(10002, TO_DATE('07/15/2019', 'MM/DD/YYYY'), 'S711', 711);
    Insert into Lesson Values(10003, TO_DATE('07/15/2019', 'MM/DD/YYYY'), 'S711', 711);
    Insert into Lesson Values(10004, TO_DATE('07/15/2019', 'MM/DD/YYYY'), 'S711', 711);
    Insert into Lesson Values(10005, TO_DATE('07/15/2019', 'MM/DD/YYYY'), 'S711', 711);
    Insert into Lesson Values(10006, TO_DATE('08/16/2019', 'MM/DD/YYYY'), 'S911', 711);
    Insert into Lesson Values(10007, TO_DATE('08/16/2019', 'MM/DD/YYYY'), 'S911', 711);
    Insert into Lesson Values(10008, TO_DATE('08/16/2019', 'MM/DD/YYYY'), 'S911', 711);
    Insert into Lesson Values(10009, TO_DATE('08/16/2019', 'MM/DD/YYYY'), 'S911', 711);
    Insert into Lesson Values(10010, TO_DATE('08/16/2019', 'MM/DD/YYYY'), 'S911', 711);
    Insert into Lesson Values(10011, TO_DATE('09/15/2019', 'MM/DD/YYYY'), 'S140', 711);
    Insert into Lesson Values(10012, TO_DATE('09/15/2019', 'MM/DD/YYYY'), 'S140', 711);
    Insert into Lesson Values(10013, TO_DATE('09/15/2019', 'MM/DD/YYYY'), 'S140', 711);
    Insert into Lesson Values(10014, TO_DATE('09/15/2019', 'MM/DD/YYYY'), 'S140', 711);
    Insert into Lesson Values(10015, TO_DATE('09/15/2019', 'MM/DD/YYYY'), 'S140', 711);
    Insert into Lesson Values(10016, TO_DATE('10/15/2019', 'MM/DD/YYYY'), 'S690', 711);
    Insert into Lesson Values(10017, TO_DATE('11/15/2019', 'MM/DD/YYYY'), 'S555', 711);
    Insert into Lesson Values(10018, TO_DATE('08/15/2019', 'MM/DD/YYYY'), 'S711', 711);
    Insert into Lesson Values(10019, TO_DATE('09/21/2019', 'MM/DD/YYYY'), 'S911', 711);
    Insert into Lesson Values(10020, TO_DATE('10/22/2019', 'MM/DD/YYYY'), 'S140', 711);
    Insert into Lesson Values(10021, TO_DATE('11/23/2019', 'MM/DD/YYYY'), 'S690', 711);
    Insert into Lesson Values(10022, TO_DATE('12/20/2019', 'MM/DD/YYYY'), 'S555', 711);

Create Table Guardian(
    Stein_id varchar2(64) NOT NULL,
    guardian_name varchar2(64),
    guardian_city varchar2(64),
    guardian_state varchar2(64),
    guardian_phone int,
    PRIMARY KEY (Stein_id),
    FOREIGN KEY (Stein_id) REFERENCES Student(Stein_ID) ON DELETE CASCADE
);

    INSERT INTO Guardian VALUES ('S711','Karen', 'Duluth', 'MN', 657392019);
    INSERT INTO Guardian VALUES ('S911', 'Mike', 'Duluth', 'MN', 8910567);
    INSERT INTO Guardian VALUES ('S140', 'Jack', 'Duluth', 'MN', 182937468);
    INSERT INTO Guardian VALUES ('S690', 'Ben' , 'Duluth', 'Mn', 109283746);
    INSERT INTO Guardian VALUES ('S555', 'William,', 'Duluth', 'MN', 201928376);
    INSERT INTO Guardian VALUES ('S890', 'Nick', 'Duluth', 'GA', 1099872635);
    INSERT INTO Guardian VALUES ('S190','Schmidt', 'Duluth', 'GA', 65289182);
    INSERT INTO Guardian VALUES ('S081', 'Winston', 'Duluth', 'GA', 672839012);
    INSERT INTO Guardian VALUES ('S678', 'Terry', 'Duluth', 'GA', 650192836);
    
Create Table Road_Test(
    RoadTest_ID int NOT NULL,
    Test_Date date,
    Score varchar2(64),
    StateExaminer_ID int,
    StateExaminer_name varchar2(64),
    Stein_id varchar2(64) NOT NULL,
    vin varchar2(64) NOT NULL,
    PRIMARY KEY (RoadTest_ID),
        FOREIGN KEY(Stein_id) REFERENCES Student(Stein_ID) ON DELETE CASCADE,
            FOREIGN KEY(vin) REFERENCES Vehicle(vin) ON DELETE CASCADE,
    CHECK (Score = 'Pass' OR Score = 'Fail')        
);

     INSERT INTO Road_Test VALUES ('901', TO_DATE('07/13/2018', 'MM/DD/YYYY'), 'Fail', '9821', 'Charlie', 'S711', 'S543XD');
     INSERT INTO Road_Test VALUES ('901', TO_DATE('08/15/2018', 'MM/DD/YYYY'), 'Fail', '9821', 'Charlie', 'S711', 'S543XD');
     INSERT INTO Road_Test VALUES ('901', TO_DATE('09/20/2019', 'MM/DD/YYYY'), 'Pass', '9821', 'Charlie', 'S711', 'S543XD');
     INSERT INTO Road_Test VALUES ('882', TO_DATE('08/22/2019', 'MM/DD/YYYY'), 'Fail', '2909', 'Walter', 'S911', 'F94kIS');
     INSERT INTO Road_Test VALUES ('882', TO_DATE('09/23/2019', 'MM/DD/YYYY'), 'Fail', '2906', 'Walter', 'S911', 'F94kIS');
     INSERT INTO Road_Test VALUES ('882', TO_DATE('09/24/2020', 'MM/DD/YYYY'), 'Pass', '2907', 'Walter', 'S911', 'F94kIS');


Create Table Has_Vehicle(
    lessons_id int NOT NULL,
    vin varchar2(64) NOT NULL,
    PRIMARY KEY(lessons_id, vin),
        FOREIGN KEY(lessons_id) REFERENCES Lesson(lesson_id) ON DELETE CASCADE,
            FOREIGN KEY(vin) REFERENCES Vehicle(vin) ON DELETE CASCADE
);

	INSERT INTO Has_Vehicle VALUES ('19011','FQ904R');
	INSERT INTO Has_Vehicle VALUES ('12918','S543XD');
	INSERT INTO Has_Vehicle VALUES ('20901','F94kIS');
	INSERT INTO Has_Vehicle VALUES ('20192','S543XD');
	INSERT INTO Has_Vehicle VALUES ('20201','FQ904R');
	INSERT INTO Has_Vehicle VALUES ('19882','FQ904R');
	INSERT INTO Has_Vehicle VALUES ('20112','S543XD');
	INSERT INTO Has_Vehicle VALUES ('98127','TT45UI');
	INSERT INTO Has_Vehicle VALUES ('00912','F94kIS');
	INSERT INTO Has_Vehicle VALUES ('77445','S543XD');
	INSERT INTO Has_Vehicle VALUES ('77809','TT45UI');
	INSERT INTO Has_Vehicle VALUES ('77342','S543XD');
	INSERT INTO Has_Vehicle VALUES ('76543','FQ904R');
	INSERT INTO Has_Vehicle VALUES ('76680','S543XD');
	INSERT INTO Has_Vehicle VALUES ('66789','TT45UI');
	INSERT INTO Has_Vehicle VALUES ('20192','TT45UI');
	INSERT INTO Has_Vehicle VALUES ('77445','FQ904R');
	INSERT INTO Has_Vehicle VALUES ('66789','FQ904R');
	INSERT INTO Has_Vehicle VALUES ('20192','FQ904R');



Create Table Has_Instructor(
    Instructor_ssn int NOT NULL,
    Stein_id varchar2(64) NOT NULL,
    PRIMARY KEY (Instructor_ssn, Stein_id),
        FOREIGN KEY(instructor_ssn) REFERENCES Instructor(instructor_ssn) ON DELETE CASCADE,
            FOREIGN KEY(Stein_id) REFERENCES Student(Stein_ID) ON DELETE CASCADE
);

    INSERT INTO Has_Instructor VALUES('S711', 711);
    INSERT INTO Has_Instructor VALUES('S911', 711);
    INSERT INTO Has_Instructor VALUES('S140', 711);
    INSERT INTO Has_Instructor VALUES('S690', 711);
    INSERT INTO Has_Instructor VALUES('S555', 711);
    INSERT INTO Has_Instructor VALUES('S890', 911);
    INSERT INTO Has_Instructor VALUES('S190', 911);
    INSERT INTO Has_Instructor VALUES('S081', 911);
    INSERT INTO Has_Instructor VALUES('S881', 911);
    INSERT INTO Has_Instructor VALUES('S678', 911);



--student has to be over 15
CREATE TRIGGER Age_Student
BEFORE INSERT
ON Student
FOR EACH ROW

BEGIN
    
    IF( months_between(TRUNC(sysdate),:NEW.Birth_Day)/12 < 15)
    THEN
   raise_application_error(-20001, 'Student needs to be over age of 15');
    END IF;
END;

DROP TRIGGER Age_Student;


--has Guardian if under 18
CREATE TRIGGER Age_Guardian
BEFORE INSERT
ON Student
FOR EACH ROW
BEGIN
    
    IF( months_between(TRUNC(sysdate),:NEW.Birth_Day)/12 < 18 AND :NEW.hasGuardian = 'No')
    THEN
   raise_application_error(-20001, 'Student under 18 needs a Guardian');
    END IF;
END;

DROP TRIGGER Age_Guardian;

Insert into Student Values('S911', 'Kevin', TO_DATE('04/04/2016', 'MM/DD/YYYY'), 223232323, 'Duluth', 'MN',1,711, 'Yes');



