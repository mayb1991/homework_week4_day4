INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone
)

VALUES(
    'Bradley',
    'May',
    'mayb1991@yahoo.com',
    '5616744422'
),(
    'Jessica',
    'May',
    'jessicadeneus@gmail.com',
    '9044013757'
),(
    'Ezra',
    'Gabriel',
    'ezrathegabriel@ez.com',
    '5619646695'
);

INSERT INTO salesperson(
    first_name,
    last_name
)

VALUES(
    'Bill',
    'Stlian'
),(
    'Justice',
    'Enlow'
),(
    'Robert',
    'Rafiel'
);

INSERT INTO cars(
    make,
    model,
    year,
    MSRP,
    new_car,
    used_car
)

VALUES(
    'Toyota',
    'Trundra',
    2022,
    35250,
    TRUE,
    FALSE
),(
    'Toyota',
    'Avalon',
    2020,
    32500,
    FALSE,
    TRUE
   
),(
    'Dodge',
    '3500',
    2015,
    45950,
    FALSE,
    TRUE
    
);

ALTER TABLE cars
ALTER COLUMN MSRP TYPE MONEY;

INSERT INTO mechanic(
    first_name,
    last_name
)

VALUES(
    'Michael',
    'Temple'
),(
    'Mason',
    'Sanders'
),(
    'Juan',
    'Frendanez'
);

INSERT INTO serv(
    parts
)

VALUES(
    True
),(
    True
),(
    False
);

INSERT INTO invoice(
    amount
)
VALUES(
    '1500'
),(
    '65850'
),(
    '250'
);


CREATE OR REPLACE FUNCTION growing_business(
    customer INTEGER,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO customer(customer_id, first_name, last_name)
    VALUES (customer, f_name, l_name);
END
$MAIN$
SELECT growing_business(4, 'Dog', 'Man');


CREATE OR REPLACE FUNCTION growing_staff(
    salesperson INTEGER,
    f_name VARCHAR(50),
    l_name VARCHAR (50)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO salesperson(salesperson_id, first_name, last_name)
    VALUES(salesperson, f_name, l_name);
END
$MAIN$
SELECT growing_staff(4, 'Jefferson', 'David');