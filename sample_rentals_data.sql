-- Sample data for rentals table: multiple rentals per equipment
-- Adjust rental_id, equipment_id, customer_id as needed for your schema

INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (101, 1, 1, DATE '2025-01-01', 500);
INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (102, 1, 2, DATE '2025-02-01', 600);
INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (103, 1, 3, DATE '2025-03-01', 550);

INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (104, 2, 1, DATE '2025-01-15', 400);
INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (105, 2, 2, DATE '2025-02-15', 700);
INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (106, 2, 3, DATE '2025-03-15', 650);

INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (107, 3, 1, DATE '2025-01-20', 300);
INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (108, 3, 2, DATE '2025-02-20', 350);
INSERT INTO rentals (rental_id, equipment_id, customer_id, rental_date, amount) VALUES (109, 3, 3, DATE '2025-03-20', 400);

-- Additional sample data: Multiple rentals per equipment_id (2001–2015)
-- Each equipment_id gets 3 rentals with different dates and amounts

-- Equipment 2001
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3016, 1001, 2001, DATE '2024-02-15', 260000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3017, 1002, 2001, DATE '2024-03-15', 270000);

-- Equipment 2002
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3018, 1003, 2002, DATE '2024-02-25', 185000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3019, 1004, 2002, DATE '2024-03-25', 190000);

-- Equipment 2003
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3020, 1005, 2003, DATE '2024-02-10', 310000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3021, 1006, 2003, DATE '2024-03-10', 320000);

-- Equipment 2004
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3022, 1007, 2004, DATE '2024-02-20', 155000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3023, 1008, 2004, DATE '2024-03-20', 160000);

-- Equipment 2005
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3024, 1009, 2005, DATE '2024-03-10', 105000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3025, 1010, 2005, DATE '2024-04-10', 110000);

-- Equipment 2006
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3026, 1011, 2006, DATE '2024-04-15', 225000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3027, 1012, 2006, DATE '2024-05-15', 230000);

-- Equipment 2007
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3028, 1013, 2007, DATE '2024-05-05', 325000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3029, 1014, 2007, DATE '2024-06-05', 330000);

-- Equipment 2008
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3030, 1015, 2008, DATE '2024-05-12', 175000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3031, 1001, 2008, DATE '2024-06-12', 180000);

-- Equipment 2009
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3032, 1002, 2009, DATE '2024-06-01', 125000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3033, 1003, 2009, DATE '2024-07-01', 130000);

-- Equipment 2010
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3034, 1004, 2010, DATE '2024-06-18', 265000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3035, 1005, 2010, DATE '2024-07-18', 270000);

-- Equipment 2011
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3036, 1006, 2011, DATE '2024-07-02', 215000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3037, 1007, 2011, DATE '2024-08-02', 220000);

-- Equipment 2012
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3038, 1008, 2012, DATE '2024-07-15', 95000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3039, 1009, 2012, DATE '2024-08-15', 100000);

-- Equipment 2013
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3040, 1010, 2013, DATE '2024-08-05', 115000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3041, 1011, 2013, DATE '2024-09-05', 120000);

-- Equipment 2014
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3042, 1012, 2014, DATE '2024-08-18', 100000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3043, 1013, 2014, DATE '2024-09-18', 105000);

-- Equipment 2015
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3044, 1014, 2015, DATE '2024-09-01', 135000);
INSERT INTO rentals (rental_id, customer_id, equipment_id, rental_date, amount) VALUES (3045, 1015, 2015, DATE '2024-10-01', 140000);
