�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ResponseCompression\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str !
,! "
Author 

= 
ManifestConstants
. 
OrchardCoreTeam .
,. /
Website 
= 
ManifestConstants 
.  
OrchardCoreWebsite  2
,2 3
Version 
= 
ManifestConstants 
.  
OrchardCoreVersion  2
,2 3
Description 
= 
$str Z
,Z [
Category		 
=		
$str		 
)

 
]

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ResponseCompression\Startup.cs
	namespace 	
OrchardCore
 
. 
ResponseCompression )
{ 
public		 

class		 
Startup		 
:		 
StartupBase		 &
{

 
public 
override 
int 
Order !
=>" $
-% &
$num& '
;' (
public
override
void
	Configure
(
IApplicationBuilder
app
,
IEndpointRouteBuilder
routes
,
IServiceProvider
serviceProvider
)
{ 	
app 
. "
UseResponseCompression &
(& '
)' (
;( )
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. "
AddResponseCompression +
(+ ,
options, 3
=>4 6
options7 >
.> ?
EnableForHttps? M
=N O
trueP T
)T U
;U V
} 	
} 
} 