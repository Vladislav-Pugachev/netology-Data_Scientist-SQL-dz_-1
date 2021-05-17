SELECT 
	constraint_name 
FROM 
	information_schema.table_constraints 
where 
	constraint_type = 'PRIMARY KEY'