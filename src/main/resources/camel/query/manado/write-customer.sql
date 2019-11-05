insert into Vehicles (Id, CustomerName, VinCode, PoliceNumber, CreatedDate)
values (newid(), :#customer_name, :#vincode, :#police_number, current_timestamp)
