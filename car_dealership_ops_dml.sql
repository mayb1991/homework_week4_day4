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
    35,250,
    TRUE,
    FALSE
),(
    'Toyota',
    'Avalon',
    2020,
    32,500,
    FALSE,
    TRUE
   
),(
    'Dodge',
    '3500',
    2015,
    45,950,
    FALSE,
    TRUE
    
);

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
    '1500',
),(
    '65850',
),(
    '250'
);




-- CREATE FUNCTION add_a_brad(
--     actor INTEGER,
--     f_name VARCHAR(45),
--     l_name VARCHAR(45),
--     updated TIMESTAMP WITHOUT TIME ZONE
-- )
-- RETURNS VOID
-- LANGUAGE plpgsql
-- AS
-- $MAIN$
-- BEGIN
--     INSERT INTO actor(actor_id, first_name, last_name, last_update)
--     VALUES (actor, f_name, l_name, updated);

-- END
-- $MAIN$
-- SELECT add_a_brad(999, 'Brad', "May", NOW()::TIMESTAMP)