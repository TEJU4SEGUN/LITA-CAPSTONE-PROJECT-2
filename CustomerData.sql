-------retrieve the total number of customers from each region-----

select * from CustomerData

select Region,
COUNT(CustomerID) AS TotalCustomers
FROM
CustomerData
Group by Region;

----------find the most popular subscription type by the number of customers----
select SubscriptionType,
count(CustomerID) AS CustomerCount
from CustomerData
Group by SubscriptionType
order by CustomerCount Desc

-----------find customers who canceled their subscription within 6 months---
select CustomerID,SubscriptionStart,SubscriptionEnd
from
CustomerData
where SubscriptionEnd IS NOT NULL
AND DATEDIFF(MONTH,SubscriptionStart,SubscriptionEnd)<=6;

---------------- calculate the average subscription duration for all customers-----
select AVG(DATEDIFF(DAY,SubscriptionStart,SubscriptionEnd)) AS
AvgSubscriptionDuration
from
CustomerData
where SubscriptionEnd IS NOT NULL;-----IN DAYS

select AVG(DATEDIFF(MONTH,SubscriptionStart,SubscriptionEnd)) AS
AvgSubscriptionDuration
from
CustomerData
where SubscriptionEnd IS NOT NULL;--- IN MONTH

select AVG(DATEDIFF(MONTH,SubscriptionStart,SubscriptionEnd)) AS
AvgSubscriptionDuration
from
CustomerData
where SubscriptionEnd IS NULL;

SELECT AVG(DATEDIFF(DAY,SubscriptionStart,
coalesce(SubscriptionEnd,GETDATE())))
AS AvgSubscriptionDuration
from
CustomerData;-----For Active Subscription.

---------------------------find customers with subscriptions longer than 12 months-------

select CustomerID,SubscriptionStart,SubscriptionEnd
from
CustomerData
where DATEDIFF(MONTH,SubscriptionStart,
coalesce(SubscriptionEnd,GETDATE()))>12; 

------calculate total revenue by subscription type----------

SELECT SubscriptionType,
sum(Revenue) AS TotalRevenue
from CustomerData
Group by
SubscriptionType;

---------find the top 3 regions by subscription cancellations---
select TOP 3
Region,
COUNT(*) AS CancellationCount
from
CustomerData
where
Canceled= 'TRUE'
GROUP BY REGION
ORDER BY CancellationCount DESC

---------find the total number of active and canceled subscriptions----

SELECT
SUM(CASE WHEN canceled='TRUE'
THEN 1 ELSE 0 END) AS TotalCanceled,
SUM(CASE WHEN canceled = 'FALSE'
THEN 1 ELSE 0 END) AS TotalActive
from
CustomerData;