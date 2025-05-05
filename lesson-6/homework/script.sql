SELECT distinct col1, col2
FROM InputTbl
where col1 in ('a', 'c', 'm') or col2 in ('b', 'd', 'n');
select distinct
 case when col1 < col2 then col1 else col2 end as col1,
 case when col2 > col1 then col2 else col1 end as col2
from inputtbl
SELECT * FROM TestMultipleZero
where A<>0 or B<>0 or C<>0 or D<>0 
SELECT * FROM  section1
where id % 2=1
SELECT TOP 1 * FROM section1
ORDER BY ID ASC;
SELECT TOP 1* FROM section1
ORDER BY ID desc;
SELECT * FROM  section1
where name like 'B%'
 SELECT * FROM ProductCodes
 where code like '%\_%' escape  '\';
