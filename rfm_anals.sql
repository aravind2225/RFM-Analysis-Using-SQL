use analysys;

show tables;
select * from rfm_data;

alter table rfm_data add column PurDate Date;
update rfm_data
set PurDate = str_to_date(PurchaseDate,'%d-%m-%Y');

alter table rfm_data drop column PurchaseDate;
select * from rfm_data;

/* the Main Logic lies here below */

select CustomerID , max(PurDate) as MostRecentBuy,
datediff(current_date(),max(PurDate)) as Recency  from rfm_data
group by CustomerID;  /* To see the Recency of each customer */

select CustomerID ,count(*)as Frequency from rfm_data
group by CustomerID;  /* To see the Frequency of each customer */

select CustomerID , sum(TransactionAmount) as Monetary
from rfm_data
group by CustomerID;  /* To see Monetary of each customer */


create table rfm_result as
select R.CustomerID,R.Recency,F.Frequency,M.Monetary 
from (select CustomerID , max(PurDate) as MostRecentBuy,
datediff(current_date(),max(PurDate)) as Recency  from rfm_data
group by CustomerID) R 
join (select CustomerID ,count(*) as Frequency from rfm_data
group by CustomerID) F on R.CustomerID=F.CustomerID
join (select CustomerID , sum(TransactionAmount) as Monetary
from rfm_data
group by CustomerID) M on R.CustomerID=M.CustomerID;

select * from rfm_result;

create table rfm_scores as
select CustomerID,
	case
		when Recency <=360 Then "High"
        when Recency between 360 and 400 then "Medium"
        else "Low"
	end as R_Score,
	case
		when Frequency >=5 then "High"
        when Frequency between 2 and 5 then "Medium"
        else "Low"
	End as F_Score,
    case 
		when Monetary >=1000 then "High"
        when Monetary between 300 and 1000 then "Medium"
        else "Low"
	End as M_Score
from rfm_result;

select * from rfm_scores;

 










