create table checktable(
username varchar(40),
	password varchar(20)
)
drop table checktable
insert into checktable
values('rajeshrjraju8@gmail.com','Rajesh@1810')

select * from checktable
insert into checktable
values('likhitapenta@gmail.com','Likhita@1810')
insert into checktable
values('saikiransasapu93@gmail.com','Saikiran@123')


DROP TABLE NetworkHospitals;
CREATE TABLE NetworkHospitals (
    hosp_id serial PRIMARY KEY,
    hosp_title VARCHAR(70),
    hosp_location VARCHAR(50),
    hosp_address VARCHAR(100),
    hosp_contact_number VARCHAR(10),
    hosp_pincode INT,
    hosp_luudate DATE,
    hosp_luuser INT,
	grade VARCHAR(10),
	facilities varchar(255)
);
SELECT * FROM NetworkHospitals
ALTER TABLE NetworkHospitals
ADD COLUMN grade VARCHAR(10),
ADD COLUMN facilities varchar(255);


INSERT INTO NetworkHospitals (hosp_id, hosp_title, hosp_location, hosp_address, hosp_contact_number, hosp_pincode, hosp_luudate, hosp_luuser, grade, facilities)
VALUES
(1, 'City Hospital', 'City Center', '123 Main St', '1234567890', 12345, '2023-09-23', 1, 'A', 'Advanced facilities and services'),
(2, 'Rural Health Clinic', 'Rural Village', '456 Elm St', '2345678901', 54321, '2023-09-23', 2, 'B', 'Basic healthcare services'),
(3, 'Metro General Hospital', 'Downtown', '789 Oak St', '3456789012', 67890, '2023-09-23', 3, 'A', 'Comprehensive medical care'),
(4, 'Coastal Medical Center', 'Coastal City', '987 Pine St', '4567890123', 45678, '2023-09-23', 1, 'B', 'Emergency care and diagnostics'),
(5, 'Mountain View Hospital', 'Mountain Town', '654 Birch St', '5678901234', 98765, '2023-09-23', 2, 'C', 'Specialized treatments'),
(6, 'Sunrise Medical Center', 'Suburban Area', '321 Cedar St', '6789012345', 87654, '2023-09-23', 3, 'B', 'Pediatric and maternity care'),
(7, 'Golden State Hospital', 'Downtown', '135 Redwood St', '7890123456', 10987, '2023-09-23', 1, 'A', 'State-of-the-art technology'),
(8, 'Valley Community Clinic', 'Valley Town', '246 Maple St', '8901234567', 32109, '2023-09-23', 2, 'B', 'Community health services'),
(9, 'Northern Regional Hospital', 'Northern City', '753 Willow St', '9012345678', 54321, '2023-09-23', 3, 'C', 'Outpatient care and rehabilitation'),
(10, 'Sunnyvale Medical Center', 'Suburban Area', '852 Walnut St', '0123456789', 43210, '2023-09-23', 1, 'A', 'Cancer treatment center'),
(11, 'Bayside Health Center', 'Coastal Town', '369 Spruce St', '1234509876', 56789, '2023-09-23', 2, 'B', 'Mental health services'),
(12, 'Capital City Hospital', 'City Center', '147 Elm St', '2345678901', 98765, '2023-09-23', 3, 'A', 'Surgical and critical care'),
(13, 'Hillside General Hospital', 'Hillside Area', '963 Pine St', '3456789012', 10987, '2023-09-23', 1, 'B', 'Geriatric care'),
(14, 'Lakeview Medical Center', 'Lakeside Town', '753 Birch St', '4567890123', 54321, '2023-09-23', 2, 'C', 'Rehabilitation center'),
(15, 'Countryside Health Clinic', 'Countryside', '258 Oak St', '5678901234', 87654, '2023-09-23', 3, 'A', 'Wellness and preventive care');

SELECT * FROM NetworkHospitals;


CREATE TABLE InsurancePackages (
    insp_id serial PRIMARY KEY,
    insp_title VARCHAR(60),
    insp_desc VARCHAR(255),
    insp_status VARCHAR(10),
    insp_range_start NUMERIC,
    insp_range_end NUMERIC,
    insp_agelimit_start INT,
    insp_agelimit_end INT
);
INSERT INTO InsurancePackages (insp_title, insp_desc, insp_status, insp_range_start, insp_range_end, insp_agelimit_start, insp_agelimit_end)
VALUES
('Basic Health Insurance', 'Covers essential medical expenses', 'Active', 1000, 10000, 18, 65),
('Term Life Insurance', 'Coverage for a fixed term with payout on death', 'Active', 10000, 100000, 18, 75),
('Health Insurance Plan A', 'Comprehensive health coverage', 'Active', 2000, 15000, 20, 60),
('Family Health Insurance', 'Coverage for the whole family', 'Active', 5000, 20000, 0, 70),
('Senior Health Insurance', 'Specialized coverage for seniors', 'Active', 5000, 30000, 65, 90),
('Student Health Insurance', 'Coverage for students', 'Active', 1000, 8000, 18, 30);

DROP table InsurancePackages;

SELECT * FROM InsurancePackages;

drop table Diseases;

	CREATE TABLE Diseases (
		disc_id serial PRIMARY KEY,
		disc_name VARCHAR(100),
		disc_icdcode VARCHAR(10),
		disc_desc VARCHAR(255),
		disc_status VARCHAR(10)
	);
INSERT INTO Diseases (disc_id, disc_name, disc_icdcode, disc_desc, disc_status) VALUES
(1, 'Influenza', 'J10', 'Respiratory infection caused by influenza viruses', 'Active'),
(2, 'Hypertension', 'I10', 'High blood pressure', 'Active'),
(3, 'Type 2 Diabetes', 'E11', 'Metabolic disorder resulting in high blood sugar', 'Active'),
(4, 'Asthma', 'J45', 'Chronic respiratory disease causing breathing difficulties', 'Active'),
(5, 'Osteoarthritis', 'M15', 'Degenerative joint disease', 'Active'),
(6, 'Cancer', 'C50', 'Malignant tumor', 'Active'),
(7, 'Heart Disease', 'I25', 'Various conditions affecting the heart', 'Active'),
(8, 'Migraine', 'G43', 'Recurrent headaches', 'Active'),
(9, 'Chronic Kidney Disease', 'N18', 'Progressive kidney damage', 'Active'),
(10, 'Alzheimer''s Disease', 'G30', 'Neurodegenerative disease causing memory loss', 'Active');
SELECT * FROM Diseases;
drop table InsurancePackageCoveredDiseases;

CREATE TABLE InsurancePackageCoveredDiseases (
    insp_id INT,
    disc_id INT,
    PRIMARY KEY (insp_id, disc_id),
    FOREIGN KEY (insp_id) REFERENCES InsurancePackages(insp_id),
    FOREIGN KEY (disc_id) REFERENCES Diseases(disc_id)
);



-- Insert data for Basic Health Insurance
INSERT INTO InsurancePackageCoveredDiseases (insp_id, disc_id)
VALUES
(1, 1), -- Basic Health Insurance covers Influenza
(1, 2), -- Basic Health Insurance covers Hypertension
(1, 3); -- Basic Health Insurance covers Type 2 Diabetes

-- Insert data for Term Life Insurance
INSERT INTO InsurancePackageCoveredDiseases (insp_id, disc_id)
VALUES
(2, 6), -- Term Life Insurance covers Cancer
(2, 7), -- Term Life Insurance covers Heart Disease
(2, 8); -- Term Life Insurance covers Migraine

-- Insert data for Health Insurance Plan A
INSERT INTO InsurancePackageCoveredDiseases (insp_id, disc_id)
VALUES
(3, 1), -- Health Insurance Plan A covers Influenza
(3, 2), -- Health Insurance Plan A covers Hypertension
(3, 4); -- Health Insurance Plan A covers Asthma

-- Insert data for Family Health Insurance
INSERT INTO InsurancePackageCoveredDiseases (insp_id, disc_id)
VALUES
(4, 1), -- Family Health Insurance covers Influenza
(4, 2), -- Family Health Insurance covers Hypertension
(4, 5); -- Family Health Insurance covers Osteoarthritis

-- Insert data for Senior Health Insurance
INSERT INTO InsurancePackageCoveredDiseases (insp_id, disc_id)
VALUES
(5, 1), -- Senior Health Insurance covers Influenza
(5, 2), -- Senior Health Insurance covers Hypertension
(5, 7); -- Senior Health Insurance covers Heart Disease

-- Insert data for Student Health Insurance
INSERT INTO InsurancePackageCoveredDiseases (insp_id, disc_id)
VALUES
(6, 1), -- Student Health Insurance covers Influenza
(6, 2), -- Student Health Insurance covers Hypertension
(6, 8); -- Student Health Insurance covers Migraine


select * from InsurancePackageCoveredDiseases;



CREATE TABLE Customers (
    cust_id SERIAL PRIMARY KEY,
    cust_fname VARCHAR(50),
    cust_lname VARCHAR(50),
    cust_dob DATE,
    cust_address VARCHAR(255),
    cust_gender CHAR(1),
    cust_cdate DATE,
    cust_aadhar BIGINT,
    cust_status CHAR(10),
    cust_luudate DATE,
    cust_luuser INT
);
INSERT INTO Customers (cust_fname, cust_lname, cust_dob, cust_address, cust_gender, cust_cdate, cust_aadhar, cust_status, cust_luudate, cust_luuser)
VALUES
    ('John', 'Doe', '1990-05-15', '123 Main St, City1, State1', 'M', '2023-09-20', 1234567890, 'Active', '2023-09-20', 1),
    ('Jane', 'Smith', '1985-03-22', '456 Elm St, City2, State2', 'F', '2023-09-19', 9876543210, 'Active', '2023-09-19', 2),
    ('Bob', 'Johnson', '1992-07-10', '789 Oak St, City3, State3', 'M', '2023-09-18', 5555555555, 'Inactive', '2023-09-18', 1),
    ('Alice', 'Williams', '1980-12-05', '321 Pine St, City4, State4', 'F', '2023-09-17', 9999999999, 'Active', '2023-09-17', 3),
    ('David', 'Brown', '1977-09-30', '567 Cedar St, City5, State5', 'M', '2023-09-16', 7777777777, 'Active', '2023-09-16', 2),
    ('Emily', 'Davis', '1995-01-25', '654 Birch St, City6, State6', 'F', '2023-09-15', 1111111111, 'Inactive', '2023-09-15', 1),
    ('Michael', 'Miller', '1983-08-18', '432 Redwood St, City7, State7', 'M', '2023-09-14', 3333333333, 'Active', '2023-09-14', 2),
    ('Olivia', 'Wilson', '1998-04-12', '876 Maple St, City8, State8', 'F', '2023-09-13', 8888888888, 'Active', '2023-09-13', 3),
    ('Sophia', 'Moore', '1991-06-28', '789 Oak St, City9, State9', 'F', '2023-09-12', 6666666666, 'Inactive', '2023-09-12', 1),
    ('William', 'Taylor', '1982-02-08', '345 Pine St, City10, State10', 'M', '2023-09-11', 4444444444, 'Active', '2023-09-11', 2);
SELECT * FROM Customers;


-- Create the linking table for NetworkHospitals and InsurancePackages
CREATE TABLE HospitalInsuranceMapping (
    mapping_id serial PRIMARY KEY,
    hosp_id INT,
    insp_id INT,
    FOREIGN KEY (hosp_id) REFERENCES NetworkHospitals(hosp_id),
    FOREIGN KEY (insp_id) REFERENCES InsurancePackages(insp_id)
);
drop table HospitalInsuranceMapping;

-- Create meaningful data for HospitalInsuranceMapping table
INSERT INTO HospitalInsuranceMapping (hosp_id, insp_id)
VALUES
(1, 1),  -- City Hospital is associated with Basic Health Insurance
(2, 3),  -- Rural Health Clinic is associated with Health Insurance Plan A
(3, 1),  -- Metro General Hospital is associated with Basic Health Insurance
(3, 3),  -- Metro General Hospital is associated with Health Insurance Plan A
(4, 2),  -- Coastal Medical Center is associated with Term Life Insurance
(5, 1),  -- Mountain View Hospital is associated with Basic Health Insurance
(6, 4),  -- Sunrise Medical Center is associated with Family Health Insurance
(7, 1),  -- Golden State Hospital is associated with Basic Health Insurance
(8, 3),  -- Valley Community Clinic is associated with Health Insurance Plan A
(9, 5),  -- Northern Regional Hospital is associated with Senior Health Insurance
(10, 1), -- Sunnyvale Medical Center is associated with Basic Health Insurance
(10, 6), -- Sunnyvale Medical Center is associated with Student Health Insurance
(11, 4), -- Bayside Health Center is associated with Family Health Insurance
(12, 1), -- Capital City Hospital is associated with Basic Health Insurance
(12, 3), -- Capital City Hospital is associated with Health Insurance Plan A
(13, 2), -- Hillside General Hospital is associated with Term Life Insurance
(14, 4), -- Lakeview Medical Center is associated with Family Health Insurance
(15, 1);-- Countryside Health Clinic is associated with Basic Health Insurance


select * from HospitalInsuranceMapping;
