with building_budgets as (
   select
        building,
        SUM(budget) as total_budget
    from department
    group by building
),
average_building_budget as (
    select
        avg(total_budget) as avg_budget
    from building_budgets
)
select
    building_budgets.building,
    building_budgets.total_budget,
    average_building_budget.avg_budget
from building_budgets
cross join average_building_budget
where building_budgets.total_budget > average_building_budget.avg_budget
order by building_budgets.total_budget desc;