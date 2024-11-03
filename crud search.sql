create database work
use work;
create table Student(
studentid int identity (1001,1)primary key not null ,
firstname nvarchar(100),
lastname  nvarchar(100),
class   nvarchar(100),
section  nvarchar(100)
);

CREATE PROCEDURE include
    @firstname nvarchar(100),
    @lastname nvarchar(100),
    @class nvarchar(100),
    @section nvarchar(100)
AS
    INSERT INTO Student (firstname, lastname, class, section) 
    VALUES (@firstname, @lastname, @class, @section)
GO;
      EXEC include  @firstname = 'neha', @lastname = 'shahid', @class = '10', @section = 'A'
	  EXEC include  @firstname = 'rumaisa', @lastname = 'saeed', @class = '9', @section = 'B'
      EXEC include  @firstname = 'elaaf', @lastname = 'khan', @class = '8', @section = 'C'
     

	CREATE PROCEDURE result
	AS
	select*from  Student
	GO;
CREATE PROCEDURE SEARCH
	@firstname nvarchar(100)
	AS
	select*from  Student WHERE firstname = @firstname;
	GO;
          EXEC SEARCH @firstname= 'rumaisa';
CREATE PROCEDURE updateStudent
   AS

   select*from student  WHERE studentid=1003
   GO;
   
CREATE PROCEDURE delete
AS
 DELETE from  Student where studentid=1004;

GO;
