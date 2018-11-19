/* 
Query a list of CITY names from STATION with even ID numbers only. 
You may print the results in any order, but must exclude duplicates from your answer.
*/

select distinct CITY from STATION where mod(STATION.ID,2)=0;

/*
判断三角形类型.
*/

select case when A+B>C and A+C>B and B+C>A then 
    case when A=B and B=C then 'Equilateral' 
    when A=B or B=C or A=C then 'Isosceles' 
    when A!=B and B!=C and C!=A then 'Scalene' 
    end else 'Not A Triangle' 
end from TRIANGLES;

/*Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, 
immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, 
and output them in the following format: 

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS 
and [occupation] is the lowercase occupation name. 
If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
*/
select concat(NAME, concat("(",concat(substr(OCCUPATION,1,1),")"))) 
                                      from OCCUPATIONS order by NAME ASC;
select "There are a total of", count(OCCUPATION), concat(lower(occupation),"s.") 
                                      from OCCUPATIONS 
                                      group by OCCUPATION 
                                      order by count(OCCUPATION), OCCUPATION asc;
                                      

