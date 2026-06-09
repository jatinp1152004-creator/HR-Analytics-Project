select COUNT(*) totalEmployees
FROM employees_new;

select * from employees_new
limit 10;

select Department,
count(*) as AttritionCount
from employees_new
where Attrition='yes'
Group by Department 
order by AttritionCount Desc;

select OverTime,
count(*) as AttritionCount
from employees_new
where Attrition='yes'
Group by OverTime; 

select Attrition,
ROUND(AVG(MonthlyIncome),2) As AvgSalary
from employees_new
group by Attrition;

select JobRole,
count(*) as AttritionCount
from employees_new
where Attrition='yes'
Group by JobRole 
order by AttritionCount Desc;
