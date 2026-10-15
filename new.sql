Create Procedure checkPK
As 
begin
    if exists(
    select 1 
    from sys.key_constraints
    where parent_object_id=object_id('dbo.Employee2')
    and type='PK'
    )
    begin 
         throw 501,'Error',1;
    end
    else
    begin
         print 'No primary key exists';
    end
end;
go

