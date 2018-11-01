select * from course;
Select * from user;
Select * from user Inner join course on user.ID = course.ID;
Select * from user Left join course on user.ID = course.ID;
Select * from user as u 
Right join course as c on u.ID = c.ID
where c.Name = 'CSS3';
Select * from user as u 
Right join course as c on u.ID = c.ID and c.Name = 'CSS3';