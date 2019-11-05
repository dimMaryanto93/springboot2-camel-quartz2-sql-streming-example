drop extension if exists "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


create table vehicle
(
    id           varchar(64)  not null,
    customerName varchar(100) not null,
    policeNumber varchar(100) not null,
    vinCode      varchar(100) not null
);

insert into vehicle(id, customerName, policeNumber, vinCode)
values (uuid_generate_v4(), 'Dimas maryanto', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Muhamad Yusuf', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Hari Sapto Adi', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Deni Sutisna', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Junaedi', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Abdul', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Dewi', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Prima', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Gufron', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Hima', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Nanra', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Muni', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Catrine', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Zara', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Zaeni', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Aldi', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Iwa', 'D 1010 ZB', uuid_generate_v4()),
       (uuid_generate_v4(), 'Insan', 'D 1010 ZB', uuid_generate_v4());
