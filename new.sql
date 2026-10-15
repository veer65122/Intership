Create Procedure checkPK
As 
begin
    if exists(
    select 1 
    from sys.key_constraints
    where parent_object_id=object_id('dbo.Employee2')
    and type='PK'
    )


