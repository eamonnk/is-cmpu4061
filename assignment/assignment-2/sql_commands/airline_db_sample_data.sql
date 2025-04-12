-- Create database
CREATE DATABASE IF NOT EXISTS AirlineDB;
USE AirlineDB;

-- Create Tables

-- Airports Table
CREATE TABLE IF NOT EXISTS Airports (
    airport_ID VARCHAR(4) PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(255)
);

-- Aircraft_Model Table
CREATE TABLE IF NOT EXISTS aircraft_model (
    aircraft_model_ID VARCHAR(50) PRIMARY KEY,
    type VARCHAR(45),
    year_of_manufacture YEAR,
    configuration VARCHAR(45),
    manufacturer_name VARCHAR(45)
);

-- Aircraft Table
CREATE TABLE IF NOT EXISTS Aircraft (
    aircraft_ID INT PRIMARY KEY,
    aircraft_model_ID VARCHAR(50),
    airport_ID VARCHAR(4),
    seat_capacity INT,
    min_num_staff_required_to_operate INT,
    FOREIGN KEY (aircraft_model_ID) REFERENCES Aircraft_Model(aircraft_model_ID),
    FOREIGN KEY (airport_ID) REFERENCES Airports(airport_ID)
);

-- Payment_Methods Table
CREATE TABLE IF NOT EXISTS Payment_Methods (
    payment_ID INT PRIMARY KEY,
    payment_type VARCHAR(45),
    payment_provider VARCHAR(45),
    credit_card_number VARCHAR(25),
    exp_date VARCHAR(45)
);

-- Customers Table
CREATE TABLE IF NOT EXISTS Customers (
    customer_ID INT PRIMARY KEY,
    payment_ID INT,
    cust_first_name VARCHAR(45),
    cust_surname VARCHAR(45),
    cust_address VARCHAR(45),
    cust_tel_no VARCHAR(50),
    cust_email_address VARCHAR(45),
    cust_payment_preference VARCHAR(45),
    FOREIGN KEY (payment_ID) REFERENCES Payment_Methods(payment_ID)
);


-- Maintenance Table
CREATE TABLE IF NOT EXISTS Maintenance (
    event_ID INT PRIMARY KEY,
    aircraft_ID INT,
    airport_ID VARCHAR(4),
    work_type VARCHAR(25),
    work_detail VARCHAR(50),
    FOREIGN KEY (aircraft_ID) REFERENCES Aircraft(aircraft_ID),
    FOREIGN KEY (airport_ID) REFERENCES Airports(airport_ID)
);

-- Flights Table
CREATE TABLE IF NOT EXISTS Flights (
    flight_ID INT PRIMARY KEY,
    dep_airport_ID VARCHAR(4),
    arr_airport_ID VARCHAR(4),
    aircraft_ID INT,
    flight_number VARCHAR(10)
    dep_date_time DATETIME,
    arr_date_time DATETIME,
    FOREIGN KEY (dep_airport_ID) REFERENCES Airports(airport_ID),
    FOREIGN KEY (arr_airport_ID) REFERENCES Airports(airport_ID),
    FOREIGN KEY (aircraft_ID) REFERENCES Aircraft(aircraft_ID)
);

-- Bookings Table
CREATE TABLE IF NOT EXISTS Bookings (
    booking_ID INT PRIMARY KEY,
    customer_ID INT,
    flight_ID INT,
    booking_date_time DATETIME,
    payment_status BOOLEAN,
    price DECIMAL(10, 2),
    seat_number VARCHAR(5),
    cust_checked_in BOOLEAN,
    cust_boarded BOOLEAN,
    FOREIGN KEY (customer_ID) REFERENCES Customers(customer_ID),
    FOREIGN KEY (flight_ID) REFERENCES Flights(flight_ID)
);

-- Staff Table
CREATE TABLE IF NOT EXISTS Staff (
    staff_ID INT PRIMARY KEY,
    airport_ID VARCHAR(4),
    job_title VARCHAR(45),
    name VARCHAR(25),
    address VARCHAR(255),
    tel_no VARCHAR(50),
    email_address VARCHAR(50),
    FOREIGN KEY (airport_ID) REFERENCES Airports(airport_ID)
);

-- Flight_Staff Table (Bridging Table for many-to-many relationship)
CREATE TABLE IF NOT EXISTS Flight_Staff (
    staff_ID INT,
    flight_ID INT,
    flight_role VARCHAR(45),
    PRIMARY KEY (staff_ID, flight_ID),
    FOREIGN KEY (staff_ID) REFERENCES Staff(staff_ID),
    FOREIGN KEY (flight_ID) REFERENCES Flights(flight_ID)
);




-- Sample Data Insertion

-- Insert 20 rows for Airports
INSERT INTO Airports VALUES
('LHR', 'London Heathrow', 'Longford, London, UK'),
('JFK', 'John F. Kennedy International', 'Queens, New York, USA'),
('ATL', 'Hartsfield–Jackson Atlanta International', 'Atlanta, Georgia, USA'),
('ORD', 'OHare International', 'Chicago, Illinois, USA'),
('DXB', 'Dubai International', 'Dubai, UAE'),
('SYD', 'Sydney Kingsford Smith', 'Sydney, New South Wales, Australia'),
('HKG', 'Hong Kong International', 'Chek Lap Kok, Hong Kong'),
('SIN', 'Singapore Changi Airport', 'Changi, Singapore'),
('FRA', 'Frankfurt Airport', 'Frankfurt, Germany'),
('ICN', 'Incheon International', 'Incheon, South Korea'),
('AMS', 'Amsterdam Schiphol', 'Amsterdam, Netherlands'),
('SFO', 'San Francisco International', 'San Mateo County, California, USA'),
('LAX', 'Los Angeles International', 'Los Angeles, California, USA'),
('JNB', 'O.R. Tambo International', 'Johannesburg, South Africa'),
('CDG', 'Charles de Gaulle International', 'Roissy-en-France, France'),
('MUC', 'Munich Airport', 'Munich, Germany'),
('ZRH', 'Zurich Airport', 'Zurich, Switzerland'),
('YVR', 'Vancouver International', 'Vancouver, British Columbia, Canada'),
('SEA', 'Seattle-Tacoma International', 'Seattle, Washington, USA'),
('HND', 'Tokyo Hanedal', 'Tokyo, Japan')
;

-- Insert 20 rows for Aircraft Models
INSERT INTO Aircraft_Model VALUES
('A320', 'Airbus A320', 2015, 'Narrow-body, Single-aisle', 'Airbus'),
('B737', 'Boeing 737', 2018, 'Narrow-body, Single-aisle', 'Boeing'),
('A350', 'Airbus A350', 2020, 'Wide-body, Twin-aisle', 'Airbus'),
('B787', 'Boeing 787', 2021, 'Wide-body, Twin-aisle', 'Boeing'),
('A380', 'Airbus A380', 2019, 'Wide-body, Four-engine', 'Airbus'),
('B767', 'Boeing 767', 2014, 'Wide-body, Twin-engine', 'Boeing'),
('E175', 'Embraer E175', 2017, 'Regional Jet, Single-aisle', 'Embraer'),
('CRJ200', 'Bombardier CRJ200', 2016, 'Regional Jet, Single-aisle', 'Bombardier'),
('B747', 'Boeing 747', 2007, 'Wide-body, Four-engine', 'Boeing'),
('A330', 'Airbus A330', 2013, 'Wide-body, Twin-engine', 'Airbus'),
('B737 MAX', 'Boeing 737 MAX', 2022, 'Narrow-body, Single-aisle', 'Boeing'),
('A321', 'Airbus A321', 2014, 'Narrow-body, Single-aisle', 'Airbus'),
('B757', 'Boeing 757', 2015, 'Wide-body, Twin-engine', 'Boeing'),
('A310', 'Airbus A310', 2012, 'Wide-body, Twin-engine', 'Airbus'),
('B777', 'Boeing 777', 2018, 'Wide-body, Twin-engine', 'Boeing'),
('A220', 'Airbus A220', 2021, 'Regional Jet, Single-aisle', 'Airbus'),
('E190', 'Embraer E190', 2019, 'Regional Jet, Single-aisle', 'Embraer'),
('B737NG', 'Boeing 737 NG', 2016, 'Narrow-body, Single-aisle', 'Boeing'),
('A350-1000', 'Airbus A350-1000', 2022, 'Wide-body, Twin-aisle', 'Airbus');

-- Insert 20 rows for Aircraft
INSERT INTO Aircraft VALUES
(101, 'A320', 'LHR', 180, 5),
(102, 'B737', 'JFK', 200, 6),
(103, 'A350', 'ATL', 350, 9),
(104, 'B787', 'ORD', 290, 8),
(105, 'A380', 'DXB', 500, 12),
(106, 'B767', 'SYD', 250, 7),
(107, 'E175', 'HKG', 80, 3),
(108, 'CRJ200', 'SIN', 70, 2),
(109, 'B747', 'FRA', 400, 10),
(110, 'A330', 'ICN', 280, 7),
(111, 'B737 MAX', 'AMS', 190, 6),
(112, 'A321', 'SFO', 220, 6),
(113, 'B757', 'LAX', 230, 7),
(114, 'A310', 'JNB', 260, 7),
(115, 'B777', 'CDG', 350, 8),
(116, 'A220', 'MUC', 120, 4),
(117, 'E190', 'ZRH', 100, 4),
(118, 'B737NG', 'YVR', 180, 5),
(119, 'A350-1000', 'SEA', 350, 9);

-- Insert 20 rows for Maintenance
INSERT INTO Maintenance VALUES
(1, 101, 'LHR', 'Engine Check', 'Routine engine maintenance'),
(2, 102, 'JFK', 'Landing Gear Inspection', 'Check landing gear condition'),
(3, 103, 'ATL', 'Wing Inspection', 'Check wing surface for damage'),
(4, 104, 'ORD', 'Aileron Check', 'Test aileron response'),
(5, 105, 'DXB', 'Turbine Inspection', 'Inspect turbine for wear and tear'),
(6, 106, 'SYD', 'Nose Wheel Inspection', 'Check for wheel wear'),
(7, 107, 'HKG', 'Air Filter Replacement', 'Replace cabin air filters'),
(8, 108, 'SIN', 'Hydraulic Check', 'Inspect hydraulic fluid levels'),
(9, 109, 'FRA', 'Engine Oil Change', 'Change engine oil'),
(10, 110, 'ICN', 'Wing Flap Check', 'Check wing flaps for functionality'),
(11, 111, 'AMS', 'Turbine Check', 'Inspect turbine for damages'),
(12, 112, 'SFO', 'Air Conditioning Repair', 'Repair AC system'),
(13, 113, 'LAX', 'Fuel System Inspection', 'Check fuel lines for leaks'),
(14, 114, 'JNB', 'Landing Gear Lubrication', 'Lubricate landing gear'),
(15, 115, 'CDG', 'Turbine Calibration', 'Calibrate turbine engine'),
(16, 116, 'MUC', 'Battery Check', 'Check battery condition'),
(17, 117, 'ZRH', 'Electrical Systems Check', 'Inspect electrical wiring and systems'),
(18, 118, 'YVR', 'Structural Integrity Check', 'Check fuselage for cracks'),
(19, 119, 'SEA', 'Brake System Check', 'Test brake system functionality');

-- Insert 20 rows for Flights
INSERT INTO Flights VALUES
(1001, 'LHR', 'JFK', 101, '2024-12-20 08:00:00', '2024-12-20 12:00:00'),
(1002, 'JFK', 'LHR', 102, '2024-12-21 09:00:00', '2024-12-21 13:00:00'),
(1003, 'ATL', 'ORD', 103, '2024-12-22 10:00:00', '2024-12-22 14:00:00'),
(1004, 'DXB', 'SYD', 104, '2024-12-23 11:00:00', '2024-12-23 15:00:00'),
(1005, 'HKG', 'SIN', 105, '2024-12-24 12:00:00', '2024-12-24 16:00:00'),
(1006, 'FRA', 'ICN', 106, '2024-12-25 13:00:00', '2024-12-25 17:00:00'),
(1007, 'AMS', 'SFO', 107, '2024-12-26 14:00:00', '2024-12-26 18:00:00'),
(1008, 'LAX', 'JNB', 108, '2024-12-27 15:00:00', '2024-12-27 19:00:00'),
(1009, 'CDG', 'MUC', 109, '2024-12-28 16:00:00', '2024-12-28 20:00:00'),
(1010, 'ZRH', 'YVR', 110, '2024-12-29 17:00:00', '2024-12-29 21:00:00'),
(1011, 'SEA', 'LHR', 111, '2024-12-30 18:00:00', '2024-12-30 22:00:00'),
(1012, 'JFK', 'FRA', 112, '2024-12-31 19:00:00', '2024-12-31 23:00:00'),
(1013, 'HKG', 'SYD', 113, '2025-01-01 20:00:00', '2025-01-01 00:00:00'),
(1014, 'SIN', 'DXB', 114, '2025-01-02 21:00:00', '2025-01-02 01:00:00'),
(1015, 'ORD', 'AMS', 115, '2025-01-03 22:00:00', '2025-01-03 02:00:00'),
(1016, 'SFO', 'SFO', 116, '2025-01-04 23:00:00', '2025-01-05 03:00:00'),
(1017, 'LAX', 'LAX', 117, '2025-01-05 00:00:00', '2025-01-05 04:00:00'),
(1018, 'SYD', 'SYD', 118, '2025-01-06 01:00:00', '2025-01-06 05:00:00'),
(1019, 'DXB', 'DXB', 119, '2025-01-07 02:00:00', '2025-01-07 06:00:00');

-- Insert 20 rows for Bookings
INSERT INTO Bookings VALUES
(2001, 1, 1001, '2024-12-15 10:00:00', TRUE, 500.00, TRUE, TRUE),
(2002, 2, 1002, '2024-12-16 11:00:00', FALSE, 450.00, FALSE, FALSE),
(2003, 3, 1003, '2024-12-17 12:00:00', TRUE, 600.00, TRUE, FALSE),
(2004, 4, 1004, '2024-12-18 13:00:00', TRUE, 550.00, TRUE, TRUE),
(2005, 5, 1005, '2024-12-19 14:00:00', FALSE, 400.00, FALSE, FALSE),
(2006, 6, 1006, '2024-12-20 15:00:00', TRUE, 650.00, TRUE, TRUE),
(2007, 7, 1007, '2024-12-21 16:00:00', TRUE, 700.00, TRUE, TRUE),
(2008, 8, 1008, '2024-12-22 17:00:00', FALSE, 380.00, FALSE, FALSE),
(2009, 9, 1009, '2024-12-23 18:00:00', TRUE, 750.00, TRUE, TRUE),
(2010, 10, 1010, '2024-12-24 19:00:00', TRUE, 800.00, TRUE, TRUE),
(2011, 11, 1011, '2024-12-25 20:00:00', TRUE, 850.00, TRUE, TRUE),
(2012, 12, 1012, '2024-12-26 21:00:00', FALSE, 420.00, FALSE, FALSE),
(2013, 13, 1013, '2024-12-27 22:00:00', TRUE, 900.00, TRUE, TRUE),
(2014, 14, 1014, '2024-12-28 23:00:00', FALSE, 350.00, FALSE, FALSE),
(2015, 15, 1015, '2024-12-29 00:00:00', TRUE, 950.00, TRUE, TRUE),
(2016, 16, 1016, '2024-12-30 01:00:00', TRUE, 1000.00, TRUE, TRUE),
(2017, 17, 1017, '2024-12-31 02:00:00', TRUE, 1050.00, TRUE, TRUE),
(2018, 18, 1018, '2025-01-01 03:00:00', TRUE, 1100.00, TRUE, TRUE),
(2019, 19, 1019, '2025-01-02 04:00:00', FALSE, 350.00, FALSE, FALSE);

-- Continue similarly for the remaining tables
