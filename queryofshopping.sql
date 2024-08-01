create database shopping;
use shopping;
show tables;

select * from shopping_trends1;
select count(*) from shopping_trends1;



#Most shipping 
select `shipping Type`,count(`shipping Type`) as ship from shopping_trends1 group by `shipping Type` order by ship desc ;

#Most Payment method
select `Payment method` ,count(`Payment method`) as payments from shopping_trends1 group by `Payment method` order by payments desc;

#most frequency of purchase 
select `Frequency of Purchases` ,count( `Frequency of Purchases`) as purchases from shopping_trends1 group by  `Frequency of Purchases` order by purchases desc;


#Subscription status
select * from shopping_trends1;


select count(`Subscription Status`) as have_sub from shopping_trends1 where `Subscription Status`='Yes';


select count(`Subscription Status`) as not_have_sub  from shopping_trends1 where `Subscription Status`='No';

#Discount applied
select count(`Discount Applied`) as have_dis from shopping_trends1 where `Discount Applied`='Yes';


select count(`Discount Applied`) as have_not_dis from shopping_trends1 where `Discount Applied`='No';

#promocode 
select count(`Promo Code Used`) as have_promo from shopping_trends1 where `Promo Code Used`='Yes';

select count(`Promo Code Used`) as have_not_promo from shopping_trends1 where `Promo Code Used`='No';


#count the number of male 
select count(*) as Male_customer from shopping_trends1 where Gender="Male";
#count the number of female 
select count(*) as female_customer from shopping_trends1 where Gender="Female";

select distinct(location) from  shopping_trends1;

#top 5 product location where most people buy 
select location,count(location) as loco from shopping_trends1 group by location order by loco desc limit 5;

#top 5 product location where least people buy 
select location,count(location)as loco from shopping_trends1 group by location order by loco   limit 5;
desc shopping_trends1;

#number of category avaiblable
select category, count(category)  from  shopping_trends1 group by category;


#number of items purchased avaible
ALTER TABLE shopping_trends1 CHANGE COLUMN `Item Purchased` Item_purchased VARCHAR(255);

select Item_purchased ,count(Item_purchased)  from  shopping_trends1 group by Item_purchased;

select Item_purchased ,count(Item_purchased)  from  shopping_trends1 group by Item_purchased ;

#Top 5 item purchased 
SELECT Item_purchased, COUNT(Item_purchased) AS purchase_count
FROM shopping_trends1
GROUP BY Item_purchased
ORDER BY purchase_count DESC
LIMIT 5;



#top 10 least item purchased 
SELECT Item_purchased, COUNT(Item_purchased) AS purchase_count
FROM shopping_trends1
GROUP BY Item_purchased
ORDER BY purchase_count asc
LIMIT 5;

#top category by male
SELECT category, COUNT(category) AS category_count
FROM shopping_trends1 where gender='Male'
GROUP BY category
ORDER BY category_count DESC
LIMIT 1;

# least selling categroy by male
SELECT category, COUNT(category) AS category_count
FROM shopping_trends1 where gender='Male'
GROUP BY category
ORDER BY category_count asc
LIMIT 1;

#Top 3 most item purchased by men
SELECT Item_purchased, COUNT(Item_purchased) AS purchase_count
FROM shopping_trends1 where gender='Male'
GROUP BY Item_purchased
ORDER BY purchase_count desc
LIMIT 3;


#Top 3 least item purchased by men
SELECT Item_purchased, COUNT(Item_purchased) AS purchase_count
FROM shopping_trends1 where gender='Male'
GROUP BY Item_purchased
ORDER BY purchase_count asc
LIMIT 3;




# top selling categroy by female
SELECT category, COUNT(category) AS category_count
FROM shopping_trends1 where gender='Female'
GROUP BY category
ORDER BY category_count DESC
LIMIT 1;

# least selling categroy by female
SELECT category, COUNT(category) AS category_count
FROM shopping_trends1 where gender='Female'
GROUP BY category
ORDER BY category_count asc
LIMIT 1;

#Top 3 most item purchased by Female
SELECT Item_purchased, COUNT(Item_purchased) AS purchase_count
FROM shopping_trends1 where gender='Female'
GROUP BY Item_purchased
ORDER BY purchase_count desc
LIMIT 3;

#Top 3 most least  purchased by Female
SELECT Item_purchased, COUNT(Item_purchased) AS purchase_count
FROM shopping_trends1 where gender='Female'
GROUP BY Item_purchased
ORDER BY purchase_count asc
LIMIT 3;
