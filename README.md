# CheckOrder
We can check the order of coma separated column value in SQL (Eg. Value Stored in column is '7,4,6')

For example we have the below 

|Name  |Flag   |sal    |id|Modified_date|WDN   |
|------|-------|-------|--|------------ |------|
|Suresh|R      |3000   |1 |	NULL	|7,6   |
|MItesh|R      |4000   |2 |	NULL	|2,3,6 |
|Chirag|w      |10000  |3 |	NULL	|5,4,2 |
|Ashwin|B      |5000   |4 |	NULL	|6,7   |
|Suresh|B      |3000   |5 |	NULL	|2,4,6 |
|Mitesh|B      |4000   |6 |	NULL	|5,4,3 |
|Suresh|B      |3000   |7 |	NULL	|5,7,6 |
|Suresh|w      |3000   |8 |	NULL	|4,6   |
|Ashwin|B      |5000   |9 |	NULL	|6,4,7 |



And if We want to check  the Working Day number(WDN) column is inorder wether desc/asc or not inorder that 
time we can use this script.This script will give the result for id 7 and 9 as not inorder  

