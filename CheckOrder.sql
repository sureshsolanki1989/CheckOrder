select * into #Split from  employee
Declare @wdn varchar(10)
Declare @id int
Declare @len int
Declare @i int
Declare @flag int
SET @i=0
SET @flag=0
while exists(select * from #Split)
begin
	select top 1 @wdn=WDN, @id=id from #Split order by id asc
	Print 'String  ' + @wdn

	SET @len = len(@wdn)

	SET @i=1
	while(@len>0)
	begin
		 if cast(Replace(substring(@wdn,@i+2,1),',','') as int)<>0
		 begin
				if  cast(Replace(substring(@wdn,@i,1),',','') as int) > cast(Replace(substring(@wdn,@i+2,1),',','') as int)
				begin
				     SET @flag=1
				end 
				Else if cast(Replace(substring(@wdn,@i,1),',','') as int) < cast(Replace(substring(@wdn,@i+1,1),',','') as int)
				Begin
				    SET @flag=0
				End
		End		  
		 SET @i=@i+2
		 SET @len=@len-2
	end 
	Print @flag
	Print 'Main flag value' + cast(@flag as varchar(5))
	if @flag=1
	Begin
	   Print 'The list which is not in order ' + @wdn
	   SET @flag=0
	End 
	delete from #split where id=@id
	Print  '===================================================='

end
drop table #split