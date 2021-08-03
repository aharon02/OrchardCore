�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Scripting\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str E
,E F
Category		 
=		
$str		 
,		  
IsAlwaysEnabled

 
=

 
true

 
) 
] �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Scripting\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 .
)		. /
]		/ 0
[

 
assembly

 	
:

	 

AssemblyTrademark

 
(

 
$str

 
)

  
]

  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Scripting\Providers\LogProvider.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
.  
	Providers  )
{ 
public 

class 
LogProvider 
: !
IGlobalMethodProvider 4
{ 
private		 
readonly		 
GlobalMethod		 %
_log		& *
;		* +
public 
LogProvider 
( 
ILogger "
<" #
LogProvider# .
>. /
logger0 6
)6 7
{ 	
_log
=
new
GlobalMethod
{ 
Name 
= 
$str 
, 
Method 
= 
serviceProvider (
=>) +
(, -
Action- 3
<3 4
string4 :
,: ;
string< B
,B C
objectD J
>J K
)K L
(L M
(M N
levelN S
,S T
textU Y
,Y Z
param[ `
)` a
=>b d
{ 
try 
{ 
if 
( 
! 
Enum "
." #
TryParse# +
<+ ,
LogLevel, 4
>4 5
(5 6
level6 ;
,; <
true= A
,A B
outC F
varG J
logLevelK S
)S T
)T U
{ 
logLevel %
=& '
LogLevel( 0
.0 1
Information1 <
;< =
} 
if 
( 
param "
==# %
null& *
)* +
{ 
logger #
.# $
Log$ '
(' (
logLevel( 0
,0 1
text2 6
)6 7
;7 8
} 
else 
{ 
object #
[# $
]$ %
args& *
;* +
if 
(  !
!! "
(" #
param# (
is) +
Array, 1
)1 2
)2 3
{   
args!!! %
=!!& '
new!!( +
[!!+ ,
]!!, -
{!!. /
param!!0 5
}!!6 7
;!!7 8
}"" 
else## !
{$$ 
args%%! %
=%%& '
(%%( )
object%%) /
[%%/ 0
]%%0 1
)%%1 2
param%%2 7
;%%7 8
}&& 
logger'' #
.''# $
Log''$ '
(''' (
logLevel''( 0
,''0 1
text''2 6
,''6 7
args''8 <
)''< =
;''= >
}(( 
})) 
catch** 
(** 
	Exception** %
ex**& (
)**( )
{++ 
logger,, 
.,,  
Log,,  #
(,,# $
LogLevel,,$ ,
.,,, -
Error,,- 2
,,,2 3
ex,,4 6
,,,6 7
$str	,,8 �
,
,,� �
text
,,� �
,
,,� �
param
,,� �
)
,,� �
;
,,� �
}-- 
}.. 
).. 
}// 
;//
}00 	
public22 
IEnumerable22 
<22 
GlobalMethod22 '
>22' (

GetMethods22) 3
(223 4
)224 5
{33 	
return44 
new44 
[44 
]44 
{44 
_log44 
}44  !
;44! "
}55 	
}66 
}77 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Scripting\Startup.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

class 
Startup 
: 
StartupBase &
{		 
public

 
override

 
void

 
ConfigureServices

 .
(

. /
IServiceCollection

/ A
services

B J
)

J K
{ 	
services 
. 
AddScripting !
(! "
)" #
;# $
services
.
AddJavaScriptEngine
(
)
;
services 
. 
AddSingleton !
<! "!
IGlobalMethodProvider" 7
,7 8
LogProvider9 D
>D E
(E F
)F G
;G H
} 	
} 
} 