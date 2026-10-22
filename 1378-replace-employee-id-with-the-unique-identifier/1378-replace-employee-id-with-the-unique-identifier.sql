select emu.unique_id ,name from  Employees as emp
left join EmployeeUNI as emu on emp.id=emu.id;
