use QuanLySinhVien1;

select Address, count(StudentID) as 'so luong hoc vien'
from student
group by Address;


select S.StudentId, S.StudentName, avg(Mark) as 'diem trung binh'
from student s 
join mark m on S.StudentId =M.StudentId
group by S.StudentId, S.StudentName;

select S.StudentId, S.StudentName, avg(Mark) as 'diem trung binh'
from student S 
join mark m on S.StudentId = m.StudentId
group by S.StudentId ,S.StudentName
having avg(Mark)>15;

select S.StudentId, S.StudentName, avg(mark) as 'diem trung bin lon nhat'
from student S
join mark M on S.StudentId =M.StudentId
group by S.StudentId, S.StudentName
having avg(Mark)>=all(
select avg(Mark)
from mark
group by StudentId
);



