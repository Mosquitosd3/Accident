CREATE TABLE type(
    id serial primary key,
    name varchar(255)
);

CREATE TABLE rules(
  id serial primary key,
  name varchar(255)
);

CREATE TABLE accident(
    id serial primary key,
    name varchar (255),
    text text,
    address varchar (255),
    type_id int references type(id)
);

create table accident_rules (
    id serial primary key,
    accident_id int references accident(id),
    rule_id int references rules(id)
);