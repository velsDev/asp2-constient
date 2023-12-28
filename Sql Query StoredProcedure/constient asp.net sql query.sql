create database xamarin

use xamarin

create table stateList
(
	id INT PRIMARY KEY IDENTITY(1,1),
    state VARCHAR(100),
	city VARCHAR(100),
	pincode VARCHAR(100) 
	)

	select * from stateList

	insert into stateList values ('Kerala','Kochi','645453')
	
	create procedure sp_fetch
	as begin 
	select * from stateList end 
	
	create procedure sp_insert
	(
	@state VARCHAR(100),
	@city VARCHAR(100),
	@pincode VARCHAR(100) )
	as begin 
	insert into stateList values (@state,@city,@pincode) end 

	exec sp_insert 'Karnataka','bangalore','565564'

	create procedure sp_dd
	( @searchdata varchar(100) )
	as begin 
	select * from stateList where state like '%' + @searchdata + '%' end 
	
	create procedure sp_s
	( @searchdata varchar(100) )
	as begin 
	select * from stateList where state like '%' + @searchdata + '%' end 





	create procedure sp_search1
	( @searchdata varchar(100) )
	as begin 
	select * from stateList where state like '%' + @searchdata + '%' or city like '%' + @searchdata + '%' or pincode like '%' + @searchdata + '%' or id like '%' + @searchdata + '%' end 

	create procedure sp_update
	( 
	@id int ,
	@state VARCHAR(100),
	@city VARCHAR(100),
	@pincode VARCHAR(100) ) 
	as begin 
	update stateList set state=@state,city=@city,pincode=@pincode where id=@id end 

	


	create procedure sp_updatefetch
	( @id int )
	as begin
	select * from stateList where id=@id end 

    create procedure sp_delete
	( @id int )
	as begin
	delete from stateList where id=@id end 