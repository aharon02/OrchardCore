�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\IXmlRpcDriver.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
{ 
public 

	interface 

{ 
void 
Process
( 
object 
item  
)  !
;! "
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\IXmlRpcHandler.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
{ 
public 

	interface 
IXmlRpcHandler #
{ 
void 
SetCapabilities
( 
XElement %
element& -
)- .
;. /
Task		 
ProcessAsync		
(		 

context		( /
)		/ 0
;		0 1
}

 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Models\XRpcArray.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Models #
{ 
public 

class 
	XRpcArray 
{ 
public 
	XRpcArray 
( 
) 
{ 	
Data		 
=		 
new		 
List		 
<		 
XRpcData		 $
>		$ %
(		% &
)		& '
;		' (
}

 	
public 
IList 
< 
XRpcData 
> 
Data #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public
object
this
[
int
index
]
{ 	
get 
{ 
return 
Data 
[ 
index #
]# $
.$ %
Value% *
;* +
}, -
} 	
public 
	XRpcArray 
Add 
< 
T 
> 
(  
T  !
value" '
)' (
{ 	
Data 
. 
Add 
( 
XRpcData 
. 
For !
(! "
value" '
)' (
)( )
;) *
return 
this 
; 
} 	
} 
} �!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Models\XRpcData.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Models #
{ 
public 

class 
XRpcData 
{ 
private 
object 
_value 
; 
public		 
object		 
Value		 
{

 	
get 
{ 
return 
_value 
;  
}! "
set 
{ 
SetValue 
( 
value  
)  !
;! "
}# $
}
	protected 
virtual 
void 
SetValue '
(' (
object( .
value/ 4
)4 5
{ 	
_value 
= 
value 
; 
} 	
public 
virtual 
Type 
Type  
{! "
get# &
{' (
return) /
typeof0 6
(6 7
object7 =
)= >
;> ?
}@ A
}B C
public 
static 
XRpcData 
< 
T  
>  !
For" %
<% &
T& '
>' (
(( )
T) *
t+ ,
), -
{ 	
return 
new 
XRpcData 
<  
T  !
>! "
{# $
Value% *
=+ ,
t- .
}/ 0
;0 1
} 	
} 
public 

class 
XRpcData 
< 
T 
> 
: 
XRpcData '
{ 
private 
T 
_value 
; 
public   
new   
T   
Value   
{!! 	
get"" 
{"" 
return"" 
_value"" 
;""  
}""! "
set## 
{## 
SetValue## 
(## 
value##  
)##  !
;##! "
}### $
}$$ 	
private&& 
void&& 
SetValue&& 
(&& 
T&& 
value&&  %
)&&% &
{'' 	
_value(( 
=(( 
value(( 
;(( 
base)) 
.)) 
SetValue)) 
()) 
value)) 
)))  
;))  !
}** 	
	protected,, 
override,, 
void,, 
SetValue,,  (
(,,( )
object,,) /
value,,0 5
),,5 6
{-- 	
_value.. 
=.. 
(.. 
T.. 
).. 
Convert.. 
...  

ChangeType..  *
(..* +
value..+ 0
,..0 1
typeof..2 8
(..8 9
T..9 :
)..: ;
)..; <
;..< =
base// 
.// 
SetValue// 
(// 
value// 
)//  
;//  !
}00 	
public22 
override22 
Type22 
Type22 !
{22" #
get22$ '
{22( )
return22* 0
typeof221 7
(227 8
T228 9
)229 :
;22: ;
}22< =
}22> ?
}33 
public55 

class55 
	XRpcFault55 
{66 
public77 
	XRpcFault77 
(77 
int77 
code77 !
,77! "
string77# )
message77* 1
)771 2
{88 	
Code99 
=99 
code99 
;99 
Message:: 
=:: 
message:: 
;:: 
};; 	
public== 
string== 
Message== 
{== 
get==  #
;==# $
set==% (
;==( )
}==* +
public>> 
int>> 
Code>> 
{>> 
get>> 
;>> 
set>> "
;>>" #
}>>$ %
}?? 
}@@ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Models\XRpcMethodCall.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Models #
{ 
public 

class 
XRpcMethodCall 
{ 
public 
string 

MethodName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IList 
< 
XRpcData 
> 
Params %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
new6 9
List: >
<> ?
XRpcData? G
>G H
(H I
)I J
;J K
}		 
}

 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Models\XRpcMethodResponse.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Models #
{ 
public 

class 
XRpcMethodResponse #
{ 
public 
XRpcMethodResponse !
(! "
)" #
{ 	
Params		 
=		 
new		 
List		 
<		 
XRpcData		 &
>		& '
(		' (
)		( )
;		) *
}

 	
public 
IList 
< 
XRpcData 
> 
Params %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public
	XRpcFault
Fault
{
get
;
set
;
}
public 
XRpcMethodResponse !
Add" %
<% &
T& '
>' (
(( )
T) *
value+ 0
)0 1
{ 	
Params 
. 
Add 
( 
XRpcData 
.  
For  #
(# $
value$ )
)) *
)* +
;+ ,
return 
this 
; 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Models\XRpcStruct.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Models #
{ 
public 

class 

XRpcStruct 
{ 
public 

XRpcStruct 
( 
) 
{ 	
Members		 
=		 
new		 

Dictionary		 $
<		$ %
string		% +
,		+ ,
XRpcData		- 5
>		5 6
(		6 7
)		7 8
;		8 9
}

 	
public 
IDictionary 
< 
string !
,! "
XRpcData# +
>+ ,
Members- 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public
object
this
[
string
index
]
{ 	
get 
{ 
return 
Members  
[  !
index! &
]& '
.' (
Value( -
;- .
}/ 0
} 	
public 

XRpcStruct 
Set 
< 
T 
>  
(  !
string! '
name( ,
,, -
T. /
value0 5
)5 6
{ 	
Members 
[ 
name 
] 
= 
XRpcData $
.$ %
For% (
(( )
value) .
). /
;/ 0
return 
this 
; 
} 	
public 
T 
Optional 
< 
T 
> 
( 
string #
name$ (
)( )
{ 	
XRpcData 
data 
; 
if 
( 
Members 
. 
TryGetValue #
(# $
name$ (
,( )
out* -
data. 2
)2 3
)3 4
return 
( 
T 
) 
data 
. 
Value $
;$ %
return 
default 
( 
T 
) 
; 
} 	
} 
}   �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Services\IXmlRpcReader.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Services %
{ 
public		 

	interface		 

{

 
XRpcMethodCall 
MapToMethodCall &
(& '
XElement' /
source0 6
)6 7
;7 8
XRpcData 
	MapToData 
( 
XElement #
source$ *
)* +
;+ ,

XRpcStruct 
MapToStruct 
( 
XElement '
source( .
). /
;/ 0
	XRpcArray%% 

MapToArray%% 
(%% 
XElement%% %
source%%& ,
)%%, -
;%%- .
}&& 
}'' �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\Services\IXmlRpcWriter.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Services %
{ 
public		 

	interface		 

{

 
XElement 
MapMethodResponse "
(" #
XRpcMethodResponse# 5
rpcMethodResponse6 G
)G H
;H I
XElement 
MapData 
( 
XRpcData !
rpcData" )
)) *
;* +
XElement 
	MapStruct 
( 

XRpcStruct %
	rpcStruct& /
)/ 0
;0 1
XElement%% 
MapArray%% 
(%% 
	XRpcArray%% #
rpcArray%%$ ,
)%%, -
;%%- .
}&& 
}'' �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.XmlRpc.Abstractions\XmlRpcContext.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
{ 
public 

class 

{		 
public

 
ControllerContext

  
ControllerContext

! 2
{

3 4
get

5 8
;

8 9
set

: =
;

= >
}

? @
public 
HttpContext 
HttpContext &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

IUrlHelper 
Url 
{ 
get  #
;# $
set% (
;( )
}* +
public
XRpcMethodCall

{
get
;
set
;
}
public 
XRpcMethodResponse !
RpcMethodResponse" 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
ICollection 
< 

>( )
Drivers* 1
=2 3
new4 7
List8 <
<< =

>J K
(K L
)L M
;M N
} 
} 