merge into Vehicles as v1
using (select :#id            as Id,
              :#customer_name as CustomerName,
              :#police_number as PoliceNumber,
              :#vincode       as VinCode
) as v2
on (v1.Id = v2.Id)
when matched then
    update
    set v1.Id           = v2.Id,
        v1.VinCode      = v2.VinCode,
        v1.PoliceNumber = v2.PoliceNumber,
        v1.CustomerName = v2.CustomerName,
        v1.CreatedDate  = current_timestamp
when not matched by target then
    insert
    values (v2.Id, v2.CustomerName, v2.VinCode, v2.PoliceNumber, current_timestamp);
