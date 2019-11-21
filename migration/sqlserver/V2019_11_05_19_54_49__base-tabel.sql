create table Vehicles
(
    Id           varchar(64)  not null primary key,
    CustomerName varchar(100) not null,
    VinCode      varchar(100) not null,
    PoliceNumber varchar(100),
    CreatedDate  datetime default current_timestamp
);

create table VehiclesTemp
(
    Id           varchar(64)  not null primary key,
    VehicleId    varchar(64),
    CustomerName varchar(100) not null,
    VinCode      varchar(100) not null,
    PoliceNumber varchar(100),
    CreatedDate  datetime default current_timestamp
);
