-- Oracle SQL: Create Tables
CREATE TABLE customers (
    customer_id   NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    region        VARCHAR2(50) NOT NULL
);

CREATE TABLE equipment (
    equipment_id  NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    category      VARCHAR2(50) NOT NULL
);

CREATE TABLE rentals (
    rental_id     NUMBER PRIMARY KEY,
    customer_id   NUMBER NOT NULL,
    equipment_id  NUMBER NOT NULL,
    rental_date   DATE NOT NULL,
    amount        NUMBER NOT NULL,
    CONSTRAINT fk_rentals_customer FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    CONSTRAINT fk_rentals_equipment FOREIGN KEY (equipment_id)
        REFERENCES equipment(equipment_id)
);

CREATE TABLE maintenance (
    maintenance_id    NUMBER PRIMARY KEY,
    equipment_id      NUMBER NOT NULL,
    maintenance_date  DATE NOT NULL,
    cost              NUMBER NOT NULL,
    CONSTRAINT fk_maintenance_equipment FOREIGN KEY (equipment_id)
        REFERENCES equipment(equipment_id)
);
