create table shop
(
    id serial primary key,
    shop_name varchar(50)
);

create table client
(
    id serial primary key,
    client_name varchar(50),
    client_surname varchar(50),
    client_number varchar(50)
);

create table product
(
    id serial primary key,
    product_name varchar(50),
    price numeric(10,2),
    product_count int,
    shop_id int references shop(id)
);

create table purchase
(
    id serial primary key,
    client_id int references client(id),
    product_id int references product(id)
);


insert into shop (shop_name) values ('7eleven');

insert into product (product_name, price, product_count, shop_id) values
('Milk', 60, 100, 1), 
('Bread', 34.7, 200, 1),
('LitEnergy', 8000, 10, 1),
('Rice', 30, 50, 1);

insert into client (client_name, client_surname, client_number) values
  ('Sof`ya', 'Bidylo', '89123456789'),
  ('Sof`ya', 'Galkina', '89123456789'),
  ('Petr', 'Petrov', '89123456789'),
  ('Ivan', 'Ivanov', '89123456789');
  
insert into purchase( client_id, product_id) values 
(1, 1);