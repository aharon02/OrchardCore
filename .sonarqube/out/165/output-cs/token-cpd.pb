�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Redis.Abstractions\IRedisService.cs
	namespace 	
OrchardCore
 
. 
Redis 
{ 
public 

	interface 

:# $ 
IModularTenantEvents% 9
{ 
Task		 
ConnectAsync		
(		 
)		 
;		 "
IConnectionMultiplexer

 

Connection

 )
{

* +
get

, /
;

/ 0
}

1 2
	IDatabase 
Database 
{ 
get  
;  !
}" #
} 
}
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Redis.Abstractions\RedisOptions.cs
	namespace 	
OrchardCore
 
. 
Redis 
{ 
public 

class 
RedisOptions 
{		 
public
ConfigurationOptions
ConfigurationOptions
{
get
;
set
;
}
} 
} 