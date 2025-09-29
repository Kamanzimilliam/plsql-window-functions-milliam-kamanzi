-- Oracle SQL: Populate Tables
INSERT ALL
  INTO customers (customer_id, name, region) VALUES (1001, 'John Doe', 'Kigali')
  INTO customers (customer_id, name, region) VALUES (1002, 'Jane Smith', 'Musanze')
  INTO customers (customer_id, name, region) VALUES (1003, 'Alice Brown', 'Huye')
  INTO customers (customer_id, name, region) VALUES (1004, 'Bob Lee', 'Rubavu')
  INTO customers (customer_id, name, region) VALUES (1005, 'Carol White', 'Kigali')
  INTO customers (customer_id, name, region) VALUES (1006, 'David Kim', 'Musanze')
  INTO customers (customer_id, name, region) VALUES (1007, 'Eva Green', 'Huye')
  INTO customers (customer_id, name, region) VALUES (1008, 'Frank Black', 'Rubavu')
  INTO customers (customer_id, name, region) VALUES (1009, 'Grace Park', 'Kigali')
  INTO customers (customer_id, name, region) VALUES (1010, 'Henry Ford', 'Musanze')
  INTO customers (customer_id, name, region) VALUES (1011, 'Irene Scott', 'Huye')
  INTO customers (customer_id, name, region) VALUES (1012, 'Jack Ma', 'Rubavu')
  INTO customers (customer_id, name, region) VALUES (1013, 'Kelly Blue', 'Kigali')
  INTO customers (customer_id, name, region) VALUES (1014, 'Liam Young', 'Musanze')
  INTO customers (customer_id, name, region) VALUES (1015, 'Mona Lisa', 'Huye')
SELECT * FROM dual;

INSERT ALL
  INTO equipment (equipment_id, name, category) VALUES (2001, 'Excavator', 'Earthmoving')
  INTO equipment (equipment_id, name, category) VALUES (2002, 'Bulldozer', 'Earthmoving')
  INTO equipment (equipment_id, name, category) VALUES (2003, 'Crane', 'Lifting')
  INTO equipment (equipment_id, name, category) VALUES (2004, 'Loader', 'Earthmoving')
  INTO equipment (equipment_id, name, category) VALUES (2005, 'Generator', 'Power Supply')
  INTO equipment (equipment_id, name, category) VALUES (2006, 'Dump Truck', 'Hauling')
  INTO equipment (equipment_id, name, category) VALUES (2007, 'Forklift', 'Lifting')
  INTO equipment (equipment_id, name, category) VALUES (2008, 'Mixer', 'Concrete')
  INTO equipment (equipment_id, name, category) VALUES (2009, 'Roller', 'Compaction')
  INTO equipment (equipment_id, name, category) VALUES (2010, 'Backhoe', 'Earthmoving')
  INTO equipment (equipment_id, name, category) VALUES (2011, 'Scissor Lift', 'Lifting')
  INTO equipment (equipment_id, name, category) VALUES (2012, 'Water Pump', 'Utility')
  INTO equipment (equipment_id, name, category) VALUES (2013, 'Compactor', 'Compaction')
  INTO equipment (equipment_id, name, category) VALUES (2014, 'Light Tower', 'Utility')
  INTO equipment (equipment_id, name, category) VALUES (2015, 'Air Compressor', 'Utility')
SELECT * FROM dual;

INSERT ALL
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3001, 1001, 2001, DATE '2024-01-15', 250000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3002, 1002, 2002, DATE '2024-01-20', 180000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3003, 1003, 2003, DATE '2024-02-05', 300000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3004, 1004, 2004, DATE '2024-02-10', 150000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3005, 1005, 2005, DATE '2024-03-01', 100000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3006, 1006, 2006, DATE '2024-03-15', 220000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3007, 1007, 2007, DATE '2024-04-05', 320000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3008, 1008, 2008, DATE '2024-04-12', 170000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3009, 1009, 2009, DATE '2024-05-01', 120000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3010, 1010, 2010, DATE '2024-05-18', 260000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3011, 1011, 2011, DATE '2024-06-02', 210000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3012, 1012, 2012, DATE '2024-06-15', 90000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3013, 1013, 2013, DATE '2024-07-05', 110000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3014, 1014, 2014, DATE '2024-07-18', 95000)
  INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3015, 1015, 2015, DATE '2024-08-01', 130000)
SELECT * FROM dual;

INSERT ALL
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4001, 2001, DATE '2024-01-20', 50000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4002, 2002, DATE '2024-02-15', 40000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4003, 2003, DATE '2024-03-10', 60000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4004, 2004, DATE '2024-04-18', 35000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4005, 2005, DATE '2024-05-22', 30000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4006, 2006, DATE '2024-06-05', 55000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4007, 2007, DATE '2024-06-15', 42000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4008, 2008, DATE '2024-07-10', 61000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4009, 2009, DATE '2024-07-18', 36000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4010, 2010, DATE '2024-08-22', 31000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4011, 2011, DATE '2024-09-05', 47000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4012, 2012, DATE '2024-09-15', 29000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4013, 2013, DATE '2024-10-10', 33000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4014, 2014, DATE '2024-10-18', 34000)
  INTO maintenance (maintenance_id, equipment_id, maintenance_date, cost) VALUES (4015, 2015, DATE '2024-11-01', 37000)
SELECT * FROM dual;

-- Oracle SQL: Commit changes
COMMIT;
