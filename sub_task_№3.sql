select
	data_type
FROM
	information_schema.columns
where 
	exists (
	select
		column_name
	FROM
		information_schema.key_column_usage	
	where 
		EXISTS (
		select 
			constraint_name 
		FROM 
			information_schema.table_constraints
		where 
			constraint_type = 'PRIMARY KEY'));