�1
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\Controllers\HomeController.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Controllers (
{
public 

class 
HomeController 
:  !

Controller" ,
{ 
private 
readonly 

_writer' .
;. /
private 
readonly 
IEnumerable $
<$ %
IXmlRpcHandler% 3
>3 4
_xmlRpcHandlers5 D
;D E
private 
readonly 
ILogger  
_logger! (
;( )
public 
HomeController 
( 

writer  
,  !
IEnumerable 
< 
IXmlRpcHandler &
>& '
xmlRpcHandlers( 6
,6 7
ILogger 
< 
HomeController "
>" #
logger$ *
)* +
{ 	
_writer 
= 
writer 
; 
_xmlRpcHandlers 
= 
xmlRpcHandlers ,
;, -
_logger 
= 
logger 
; 
} 	
[ 	
HttpPost	 
, 

ActionName 
( 
$str %
)% &
]& '
[ 	"
IgnoreAntiforgeryToken	 
]  
public   
async   
Task   
<   

>  ' (
ServiceEndpoint  ) 8
(  8 9
[  9 :
ModelBinder  : E
(  E F

BinderType  F P
=  Q R
typeof  S Y
(  Y Z!
MethodCallModelBinder  Z o
)  o p
)  p q
]  q r
XRpcMethodCall	  s �

methodCall
  � �
)
  � �
{!! 	
if"" 
("" 
_logger"" 
."" 
	IsEnabled"" !
(""! "
LogLevel""" *
.""* +
Debug""+ 0
)""0 1
)""1 2
{## 
_logger$$ 
.$$ 
LogDebug$$  
($$  !
$str$$! M
,$$M N

methodCall$$O Y
.$$Y Z

MethodName$$Z d
)$$d e
;$$e f
}%% 
var'' 
methodResponse'' 
=''  
await''! &

(''4 5

methodCall''5 ?
)''? @
;''@ A
if)) 
()) 
methodResponse)) 
==)) !
null))" &
)))& '
{** 
return++ 

StatusCode++ !
(++! "
$num++" %
,++% &
$str++' ;
)++; <
;++< =
},, 
var.. 
settings.. 
=.. 
new.. 
XmlWriterSettings.. 0
{// 
Encoding00 
=00 
Encoding00 #
.00# $
UTF800$ (
,00( )
OmitXmlDeclaration11 "
=11# $
false11% *
,11* +
Indent22 
=22 
true22 
}33 
;33
using66 
(66 
var66 
stream66 
=66 
new66  #
MemoryStream66$ 0
(660 1
)661 2
)662 3
{77 
using88 
(88 
	XmlWriter88  
w88! "
=88# $
	XmlWriter88% .
.88. /
Create88/ 5
(885 6
stream886 <
,88< =
settings88> F
)88F G
)88G H
{99 
var:: 
result:: 
=::  
_writer::! (
.::( )
MapMethodResponse::) :
(::: ;
methodResponse::; I
)::I J
;::J K
result;; 
.;; 
Save;; 
(;;  
w;;  !
);;! "
;;;" #
}<< 
var>> 
content>> 
=>> 
Encoding>> &
.>>& '
UTF8>>' +
.>>+ ,
	GetString>>, 5
(>>5 6
stream>>6 <
.>>< =
ToArray>>= D
(>>D E
)>>E F
)>>F G
;>>G H
return?? 
Content?? 
(?? 
content?? &
,??& '
$str??( 2
)??2 3
;??3 4
}@@ 
}AA 	
privateCC 
asyncCC 
TaskCC 
<CC 
XRpcMethodResponseCC -
>CC- .

(CC< =
XRpcMethodCallCC= K
requestCCL S
)CCS T
{DD 	
varEE 
contextEE 
=EE 
newEE 

{FF 
UrlGG 
=GG 
UrlGG 
,GG 
ControllerContextHH !
=HH" #
ControllerContextHH$ 5
,HH5 6
HttpContextII 
=II 
HttpContextII )
,II) *

=JJ 
requestJJ  '
}KK 
;KK
tryMM 
{NN 
foreachOO 
(OO 
varOO 
handlerOO $
inOO% '
_xmlRpcHandlersOO( 7
)OO7 8
{PP 
awaitQQ 
handlerQQ !
.QQ! "
ProcessAsyncQQ" .
(QQ. /
contextQQ/ 6
)QQ6 7
;QQ7 8
}RR 
}SS 
catchTT 
(TT 
	ExceptionTT 
eTT 
)TT 
{UU 
contextWW 
.WW 
RpcMethodResponseWW )
=WW* +
contextWW, 3
.WW3 4
RpcMethodResponseWW4 E
??WWF H
newWWI L
XRpcMethodResponseWWM _
(WW_ `
)WW` a
;WWa b
contextXX 
.XX 
RpcMethodResponseXX )
.XX) *
FaultXX* /
=XX0 1
newXX2 5
	XRpcFaultXX6 ?
(XX? @
$numXX@ A
,XXA B
eXXC D
.XXD E
MessageXXE L
)XXL M
;XXM N
}YY 
return[[ 
context[[ 
.[[ 
RpcMethodResponse[[ ,
;[[, -
}\\ 	
}]] 
}^^ �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\Controllers\MetaWeblogController.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Controllers (
{ 
[		 
Feature		 
(		 
$str		
)		+ ,
]		, -
public

 

class

  
MetaWeblogController

 %
:

& '

Controller

( 2
{ 
private 
const 
string 
ManifestUri (
=) *
$str+ ]
;] ^
private 
readonly 
IEnumerable $
<$ %
IXmlRpcHandler% 3
>3 4
_xmlRpcHandlers5 D
;D E
private 
readonly 
ILogger  
_logger! (
;( )
public  
MetaWeblogController #
(# $
IEnumerable 
< 
IXmlRpcHandler &
>& '
xmlRpcHandlers( 6
,6 7
ILogger 
<  
MetaWeblogController (
>( )
logger* 0
)0 1
{ 	
_xmlRpcHandlers 
= 
xmlRpcHandlers ,
;, -
_logger 
= 
logger 
; 
} 	
[ 	

( 
Duration 
=  !
$num" #
,# $
NoStore% ,
=- .
true/ 3
)3 4
]4 5
public 
ActionResult 
Manifest $
($ %
)% &
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Debug+ 0
)0 1
)1 2
{ 
_logger 
. 
LogDebug  
(  !
$str! 5
)5 6
;6 7
} 
var!! 
options!! 
=!! 
new!! 
XElement!! &
(!!& '
XName"" 
."" 
Get"" 
("" 
$str"" #
,""# $
ManifestUri""% 0
)""0 1
,""1 2
new## 
XElement## 
(## 
XName## "
.##" #
Get### &
(##& '
$str##' ;
,##; <
ManifestUri##= H
)##H I
,##I J
$str##K P
)##P Q
,##Q R
new$$ 
XElement$$ 
($$ 
XName$$ "
.$$" #
Get$$# &
($$& '
$str$$' 3
,$$3 4
ManifestUri$$5 @
)$$@ A
,$$A B
$str$$C O
)$$O P
,$$P Q
new%% 
XElement%% 
(%% 
XName%% "
.%%" #
Get%%# &
(%%& '
$str%%' 9
,%%9 :
ManifestUri%%; F
)%%F G
,%%G H
$str%%I M
)%%M N
,%%N O
new&& 
XElement&& 
(&& 
XName&& "
.&&" #
Get&&# &
(&&& '
$str&&' ;
,&&; <
ManifestUri&&= H
)&&H I
,&&I J
$str&&K O
)&&O P
,&&P Q
new'' 
XElement'' 
('' 
XName'' "
.''" #
Get''# &
(''& '
$str''' ;
,''; <
ManifestUri''= H
)''H I
,''I J
$str''K O
)''O P
,''P Q
new(( 
XElement(( 
((( 
XName(( "
.((" #
Get((# &
(((& '
$str((' ;
,((; <
ManifestUri((= H
)((H I
,((I J
$str((K O
)((O P
)((P Q
;((Q R
foreach** 
(** 
var** 
handler**  
in**! #
_xmlRpcHandlers**$ 3
)**3 4
{++ 
handler,, 
.,, 
SetCapabilities,, '
(,,' (
options,,( /
),,/ 0
;,,0 1
}-- 
var// 
doc// 
=// 
new// 
	XDocument// #
(//# $
new00 
XElement00 $
(00$ %
XName11 !
.11! "
Get11" %
(11% &
$str11& 0
,110 1
ManifestUri112 =
)11= >
,11> ?
options22 #
)22# $
)22$ %
;22% &
return44 
Content44 
(44 
doc44 
.44 
ToString44 '
(44' (
)44( )
,44) *
$str44+ 5
)445 6
;446 7
}55 	
}66 
}77 �
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
) 
] 
[

 
assembly

 	
:

	 

Feature

 
(

 
Id 
= 
$str	 
, 
Name 
=	 

$str 
, 
Description
=
$str
,
Category 
=
$str 
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 '
,' (
Name 
=	 

$str 
, 
Description 
= 
$str	 �
,
� �
Dependencies 
= 
new 
[ 
] 
{ 
$str /
}0 1
,1 2
Category 
=
$str 
) 
] �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\MethodCallModelBinder.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
{ 
public

class
MethodCallModelBinder
:
IModelBinder
{ 
public 
async 
Task 
BindModelAsync (
(( )
ModelBindingContext) <
bindingContext= K
)K L
{ 	
if 
( 
bindingContext 
== !
null" &
)& '
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
bindingContext7 E
)E F
)F G
;G H
} 
if 
( 
bindingContext 
. 
	ModelType (
==) +
typeof, 2
(2 3
XRpcMethodCall3 A
)A B
)B C
{ 
var 
mapper 
= 
bindingContext +
.+ ,
HttpContext, 7
.7 8
RequestServices8 G
.G H
GetRequiredServiceH Z
<Z [

>h i
(i j
)j k
;k l
var 
bodyTextContent #
=$ %
String& ,
., -
Empty- 2
;2 3
using 
( 
StreamReader #
reader$ *
=+ ,
new- 0
StreamReader1 =
(= >
bindingContext> L
.L M
HttpContextM X
.X Y
RequestY `
.` a
Bodya e
,e f
Encodingg o
.o p
UTF8p t
,t u
truev z
,z {
$num	| �
,
� �
true
� �
)
� �
)
� �
{ 
bodyTextContent #
=$ %
await& +
reader, 2
.2 3
ReadToEndAsync3 A
(A B
)B C
;C D
} 
var   
element   
=   
XElement   &
.  & '
Parse  ' ,
(  , -
bodyTextContent  - <
)  < =
;  = >
bindingContext"" 
."" 
Result"" %
=""& '
ModelBindingResult""( :
."": ;
Success""; B
(""B C
mapper""C I
.""I J
MapToMethodCall""J Y
(""Y Z
element""Z a
)""a b
)""b c
;""c d
}## 
}$$ 	
}%% 
}&& �T
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\Services\XmlRpcReader.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Services %
{		 
public

class
XmlRpcReader
:

{ 
private 
readonly 
IDictionary $
<$ %
string% +
,+ ,
Func- 1
<1 2
XElement2 :
,: ;
XRpcData< D
>D E
>E F
	_dispatchG P
;P Q
public 
XmlRpcReader 
( 
) 
{ 	
	_dispatch 
= 
new 

Dictionary &
<& '
string' -
,- .
Func/ 3
<3 4
XElement4 <
,< =
XRpcData> F
>F G
>G H
{ 
{ 
$str 
, 
x 
=>  
new! $
XRpcData% -
<- .
int. 1
>1 2
{3 4
Value5 :
=; <
(= >
int> A
)A B
xB C
}D E
}F G
,G H
{ 
$str 
, 
x 
=> !
new" %
XRpcData& .
<. /
int/ 2
>2 3
{4 5
Value6 ;
=< =
(> ?
int? B
)B C
xC D
}E F
}G H
,H I
{ 
$str 
,  
x! "
=># %
new& )
XRpcData* 2
<2 3
bool3 7
>7 8
{9 :
Value; @
=A B
(C D
stringD J
)J K
xK L
==M O
$strP S
}T U
}V W
,W X
{ 
$str 
, 
x  !
=>" $
new% (
XRpcData) 1
<1 2
string2 8
>8 9
{: ;
Value< A
=B C
(D E
stringE K
)K L
xL M
}N O
}P Q
,Q R
{ 
$str 
, 
x  !
=>" $
new% (
XRpcData) 1
<1 2
double2 8
>8 9
{: ;
Value< A
=B C
(D E
doubleE K
)K L
xL M
}N O
}P Q
,Q R
{   
$str   (
,  ( )
x  * +
=>  , .
{  / 0
DateTime!! $
parsedDateTime!!% 3
;!!3 4
if$$ 
($$  
!$$  !
DateTime$$! )
.$$) *
TryParse$$* 2
($$2 3
x$$3 4
.$$4 5
Value$$5 :
,$$: ;
out$$< ?
parsedDateTime$$@ N
)$$N O
&&%%  "
!%%# $
DateTime%%$ ,
.%%, -

(%%: ;
x%%; <
.%%< =
Value%%= B
,%%B C
$str%%D W
,%%W X
DateTimeFormatInfo%%Y k
.%%k l
CurrentInfo%%l w
,%%w x
DateTimeStyles	%%y �
.
%%� �
None
%%� �
,
%%� �
out
%%� �
parsedDateTime
%%� �
)
%%� �
)
%%� �
{
%%� �
parsedDateTime&&  .
=&&/ 0
DateTime&&1 9
.&&9 :
Now&&: =
;&&= >
}'' 
return)) "
new))# &
XRpcData))' /
<))/ 0
DateTime))0 8
>))8 9
{)): ;
Value))< A
=))B C
parsedDateTime))D R
}))S T
;))T U
}** 
}** 
,** 
{++ 
$str++ 
,++ 
x++  !
=>++" $
new++% (
XRpcData++) 1
<++1 2
byte++2 6
[++6 7
]++7 8
>++8 9
{++: ;
Value++< A
=++B C
Convert++D K
.++K L
FromBase64String++L \
(++\ ]
(++] ^
string++^ d
)++d e
x++e f
)++f g
}++h i
}++j k
,++k l
{,, 
$str,, 
,,, 
x,,  !
=>,," $
XRpcData,,% -
.,,- .
For,,. 1
(,,1 2
MapToStruct,,2 =
(,,= >
x,,> ?
),,? @
),,@ A
},,B C
,,,C D
{-- 
$str-- 
,-- 
x--  
=>--! #
XRpcData--$ ,
.--, -
For--- 0
(--0 1

MapToArray--1 ;
(--; <
x--< =
)--= >
)--> ?
}--@ A
,--A B
}.. 
;.. 
}// 	
public66 
XRpcMethodCall66 
MapToMethodCall66 -
(66- .
XElement66. 6
source667 =
)66= >
{77 	
return88 
new88 
XRpcMethodCall88 %
{99 

MethodName:: 
=:: 
(:: 
string:: $
)::$ %
source::% +
.::+ ,
Element::, 3
(::3 4
$str::4 @
)::@ A
,::A B
Params;; 
=;; 
source;; 
.;;  
Elements;;  (
(;;( )
$str;;) 1
);;1 2
.;;2 3
Elements;;3 ;
(;;; <
$str;;< C
);;C D
.;;D E
Select;;E K
(;;K L
	MapToData;;L U
);;U V
.;;V W
ToList;;W ]
(;;] ^
);;^ _
}<< 
;<<
}== 	
publicDD 
XRpcDataDD 
	MapToDataDD !
(DD! "
XElementDD" *
sourceDD+ 1
)DD1 2
{EE 	
varFF 
valueFF 
=FF 
sourceFF 
.FF 
ElementFF &
(FF& '
$strFF' .
)FF. /
;FF/ 0
ifGG 
(GG 
valueGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
newII 
XRpcDataII #
(II# $
)II$ %
;II% &
}JJ 
varLL 
elementLL 
=LL 
valueLL 
.LL  
ElementsLL  (
(LL( )
)LL) *
.LL* +
SingleOrDefaultLL+ :
(LL: ;
)LL; <
;LL< =
FuncNN 
<NN 
XElementNN 
,NN 
XRpcDataNN #
>NN# $
dispatchNN% -
;NN- .
ifOO 
(OO 
	_dispatchOO 
.OO 
TryGetValueOO %
(OO% &
elementOO& -
.OO- .
NameOO. 2
.OO2 3
	LocalNameOO3 <
,OO< =
outOO> A
dispatchOOB J
)OOJ K
==OOL N
falseOOO T
)OOT U
{PP 
throwQQ 
newQQ %
InvalidOperationExceptionQQ 3
(QQ3 4
$strQQ4 P
+QQQ R
elementQQS Z
.QQZ [
NameQQ[ _
.QQ_ `
	LocalNameQQ` i
)QQi j
;QQj k
}RR 
returnTT 
dispatchTT 
(TT 
elementTT #
)TT# $
;TT$ %
}UU 	
public\\ 

XRpcStruct\\ 
MapToStruct\\ %
(\\% &
XElement\\& .
source\\/ 5
)\\5 6
{]] 	
var^^ 
result^^ 
=^^ 
new^^ 

XRpcStruct^^ '
(^^' (
)^^( )
;^^) *
foreach__ 
(__ 
var__ 
member__ 
in__  "
source__# )
.__) *
Elements__* 2
(__2 3
$str__3 ;
)__; <
)__< =
{`` 
resultaa 
.aa 
Membersaa 
.aa 
Addaa "
(aa" #
(bb 
stringbb 
)bb 
memberbb "
.bb" #
Elementbb# *
(bb* +
$strbb+ 1
)bb1 2
,bb2 3
MapValuecc 
(cc 
membercc #
.cc# $
Elementcc$ +
(cc+ ,
$strcc, 3
)cc3 4
)cc4 5
)cc5 6
;cc6 7
}dd 
returnff 
resultff 
;ff 
}gg 	
publicnn 
	XRpcArraynn 

MapToArraynn #
(nn# $
XElementnn$ ,
sourcenn- 3
)nn3 4
{oo 	
varpp 
resultpp 
=pp 
newpp 
	XRpcArraypp &
(pp& '
)pp' (
;pp( )
foreachqq 
(qq 
varqq 
valueqq 
inqq !
sourceqq" (
.qq( )
Elementsqq) 1
(qq1 2
$strqq2 8
)qq8 9
.qq9 :
Elementsqq: B
(qqB C
$strqqC J
)qqJ K
)qqK L
{rr 
resultss 
.ss 
Datass 
.ss 
Addss 
(ss  
MapValuess  (
(ss( )
valuess) .
)ss. /
)ss/ 0
;ss0 1
}tt 
returnvv 
resultvv 
;vv 
}ww 	
private~~ 
XRpcData~~ 
MapValue~~ !
(~~! "

XContainer~~" ,
source~~- 3
)~~3 4
{ 	
var
�� 
element
�� 
=
�� 
source
��  
.
��  !
Elements
��! )
(
��) *
)
��* +
.
��+ ,
SingleOrDefault
��, ;
(
��; <
)
��< =
;
��= >
Func
�� 
<
�� 
XElement
�� 
,
�� 
XRpcData
�� #
>
��# $
dispatch
��% -
;
��- .
if
�� 
(
�� 
	_dispatch
�� 
.
�� 
TryGetValue
�� %
(
��% &
element
��& -
.
��- .
Name
��. 2
.
��2 3
	LocalName
��3 <
,
��< =
out
��> A
dispatch
��B J
)
��J K
==
��L N
false
��O T
)
��T U
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 P
+
��Q R
element
��S Z
.
��Z [
Name
��[ _
.
��_ `
	LocalName
��` i
)
��i j
;
��j k
}
�� 
return
�� 
dispatch
�� 
(
�� 
element
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �S
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\Services\XmlRpcWriter.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
. 
Services %
{ 
public 

class 
XmlRpcWriter 
: 

{
private 
readonly 
IDictionary $
<$ %
Type% )
,) *
Func+ /
</ 0
XRpcData0 8
,8 9
XElement: B
>B C
>C D
	_dispatchE N
;N O
public 
XmlRpcWriter 
( 
) 
{ 	
	_dispatch 
= 
new 

Dictionary &
<& '
Type' +
,+ ,
Func- 1
<1 2
XRpcData2 :
,: ;
XElement< D
>D E
>E F
{ 
{ 
typeof 
( 
int  
)  !
,! "
p# $
=>% '
new( +
XElement, 4
(4 5
$str5 :
,: ;
(< =
int= @
)@ A
pA B
.B C
ValueC H
)H I
}J K
,K L
{ 
typeof 
( 
bool !
)! "
," #
p$ %
=>& (
new) ,
XElement- 5
(5 6
$str6 ?
,? @
(A B
boolB F
)F G
pG H
.H I
ValueI N
?O P
$strQ T
:U V
$strW Z
)Z [
}\ ]
,] ^
{ 
typeof 
( 
string #
)# $
,$ %
p& '
=>( *
new+ .
XElement/ 7
(7 8
$str8 @
,@ A
pB C
.C D
ValueD I
)I J
}K L
,L M
{ 
typeof 
( 
double #
)# $
,$ %
p& '
=>( *
new+ .
XElement/ 7
(7 8
$str8 @
,@ A
(B C
doubleC I
)I J
pJ K
.K L
ValueL Q
)Q R
}S T
,T U
{ 
typeof 
( 
DateTime %
)% &
,& '
p( )
=>* ,
new- 0
XElement1 9
(9 :
$str: L
,L M
(N O
(O P
DateTimeP X
)X Y
pY Z
.Z [
Value[ `
)` a
.a b
ToStringb j
(j k
$strk 
)	 �
)
� �
}
� �
,
� �
{ 
typeof 
( 
DateTime %
?% &
)& '
,' (
p) *
=>+ -
new. 1
XElement2 :
(: ;
$str; M
,M N
(O P
(P Q
DateTimeQ Y
?Y Z
)Z [
p[ \
.\ ]
Value] b
)b c
.c d
Valued i
.i j
ToStringj r
(r s
$str	s �
)
� �
)
� �
}
� �
,
� �
{   
typeof   
(   
DateTimeOffset   +
)  + ,
,  , -
p  . /
=>  0 2
new  3 6
XElement  7 ?
(  ? @
$str  @ R
,  R S
(  T U
(  U V
DateTimeOffset  V d
)  d e
p  e f
.  f g
Value  g l
)  l m
.  m n
ToString  n v
(  v w
$str	  w �
)
  � �
)
  � �
}
  � �
,
  � �
{!! 
typeof!! 
(!! 
DateTimeOffset!! +
?!!+ ,
)!!, -
,!!- .
p!!/ 0
=>!!1 3
new!!4 7
XElement!!8 @
(!!@ A
$str!!A S
,!!S T
(!!U V
(!!V W
DateTimeOffset!!W e
?!!e f
)!!f g
p!!g h
.!!h i
Value!!i n
)!!n o
.!!o p
Value!!p u
.!!u v
ToString!!v ~
(!!~ 
$str	!! �
)
!!� �
)
!!� �
}
!!� �
,
!!� �
{"" 
typeof"" 
("" 
byte"" !
[""! "
]""" #
)""# $
,""$ %
p""& '
=>""( *
new""+ .
XElement""/ 7
(""7 8
$str""8 @
,""@ A
Convert""B I
.""I J
ToBase64String""J X
(""X Y
(""Y Z
byte""Z ^
[""^ _
]""_ `
)""` a
p""a b
.""b c
Value""c h
)""h i
)""i j
}""k l
,""l m
{## 
typeof## 
(## 

XRpcStruct## '
)##' (
,##( )
p##* +
=>##, .
	MapStruct##/ 8
(##8 9
(##9 :

XRpcStruct##: D
)##D E
p##E F
.##F G
Value##G L
)##L M
}##N O
,##O P
{$$ 
typeof$$ 
($$ 
	XRpcArray$$ &
)$$& '
,$$' (
p$$) *
=>$$+ -
MapArray$$. 6
($$6 7
($$7 8
	XRpcArray$$8 A
)$$A B
p$$B C
.$$C D
Value$$D I
)$$I J
}$$K L
,$$L M
}%% 
;%% 
}&& 	
public-- 
XElement-- 
MapMethodResponse-- )
(--) *
XRpcMethodResponse--* <
rpcMethodResponse--= N
)--N O
{.. 	
if// 
(// 
rpcMethodResponse// !
==//" $
null//% )
)//) *
{00 
throw11 
new11 !
ArgumentNullException11 /
(11/ 0
nameof110 6
(116 7
rpcMethodResponse117 H
)11H I
)11I J
;11J K
}22 
if55 
(55 
rpcMethodResponse55 !
.55! "
Fault55" '
!=55( *
null55+ /
)55/ 0
{66 
var77 
members77 
=77 
new77 !

XRpcStruct77" ,
(77, -
)77- .
;77. /
members88 
.88 
Set88 
(88 
$str88 '
,88' (
rpcMethodResponse88) :
.88: ;
Fault88; @
.88@ A
Code88A E
)88E F
;88F G
members99 
.99 
Set99 
(99 
$str99 )
,99) *
rpcMethodResponse99+ <
.99< =
Fault99= B
.99B C
Message99C J
)99J K
;99K L
return;; 
new;; 
XElement;; #
(;;# $
$str;;$ 4
,;;4 5
new<< 
XElement<<  
(<<  !
$str<<! (
,<<( )
new== 
XElement== $
(==$ %
$str==% ,
,==, -
	MapStruct==. 7
(==7 8
members==8 ?
)==? @
)==@ A
)>> 
)?? 
;?? 
}@@ 
returnBB 
newBB 
XElementBB 
(BB  
$strBB  0
,BB0 1
newCC 
XElementCC 
(CC 
$strCC %
,CC% &
rpcMethodResponseDD %
.DD% &
ParamsDD& ,
.DD, -
SelectDD- 3
(DD3 4
pEE 
=>EE 
newEE  
XElementEE! )
(EE) *
$strEE* 1
,EE1 2
MapValueEE3 ;
(EE; <
pEE< =
)EE= >
)EE> ?
)EE? @
)EE@ A
)EEA B
;EEB C
}FF 	
publicMM 
XElementMM 
MapDataMM 
(MM  
XRpcDataMM  (
rpcDataMM) 0
)MM0 1
{NN 	
ifOO 
(OO 
rpcDataOO 
==OO 
nullOO 
)OO  
{PP 
throwQQ 
newQQ !
ArgumentNullExceptionQQ /
(QQ/ 0
nameofQQ0 6
(QQ6 7
rpcDataQQ7 >
)QQ> ?
)QQ? @
;QQ@ A
}RR 
returnTT 
newTT 
XElementTT 
(TT  
$strTT  '
,TT' (
MapValueTT) 1
(TT1 2
rpcDataTT2 9
)TT9 :
)TT: ;
;TT; <
}UU 	
public\\ 
XElement\\ 
	MapStruct\\ !
(\\! "

XRpcStruct\\" ,
	rpcStruct\\- 6
)\\6 7
{]] 	
return^^ 
new^^ 
XElement^^ 
(^^  
$str__ 
,__ 
	rpcStruct`` 
.`` 
Members`` !
.``! "
Select``" (
(``( )
kvaa 
=>aa 
newaa 
XElementaa &
(aa& '
$strbb &
,bb& '
newcc !
XElementcc" *
(cc* +
$strcc+ 1
,cc1 2
kvcc3 5
.cc5 6
Keycc6 9
)cc9 :
,cc: ;
MapValuedd &
(dd& '
kvdd' )
.dd) *
Valuedd* /
)dd/ 0
)dd0 1
)dd1 2
)dd2 3
;dd3 4
}ee 	
publicll 
XElementll 
MapArrayll  
(ll  !
	XRpcArrayll! *
rpcArrayll+ 3
)ll3 4
{mm 	
returnnn 
newnn 
XElementnn 
(nn  
$stroo 
,oo 
newpp 
XElementpp 
(pp 
$strqq 
,qq 
rpcArrayrr 
.rr 
Datarr !
.rr! "
Selectrr" (
(rr( )
MapValuerr) 1
)rr1 2
)rr2 3
)rr3 4
;rr4 5
}ss 	
privatezz 
XElementzz 
MapValuezz !
(zz! "
XRpcDatazz" *
rpcDatazz+ 2
)zz2 3
{{{ 	
return|| 
new|| 
XElement|| 
(||  
$str||  '
,||' (
	_dispatch||) 2
[||2 3
rpcData||3 :
.||: ;
Type||; ?
]||? @
(||@ A
rpcData||A H
)||H I
)||I J
;||J K
}}} 	
}~~ 
} �
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.XmlRpc\Startup.cs
	namespace 	
OrchardCore
 
. 
XmlRpc 
{		 
public

 

class

 
Startup

 
:

 
StartupBase

 &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{
services 
. 
	AddScoped 
< 

,, -
XmlRpcReader. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 

,, -
XmlRpcWriter. :
>: ;
(; <
)< =
;= >
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
routes 
. "
MapAreaControllerRoute )
() *
name 
: 
$str 
, 
areaName 
: 
$str .
,. /
pattern 
: 
$str !
,! "
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
}F G
) 
;
} 	
} 
[ 
Feature 
( 
$str
)+ ,
], -
public 

class 
MetaWeblogStartup "
:# $
StartupBase% 0
{ 
public   
override   
void   
	Configure   &
(  & '
IApplicationBuilder  ' :
app  ; >
,  > ?!
IEndpointRouteBuilder  @ U
routes  V \
,  \ ]
IServiceProvider  ^ n
serviceProvider  o ~
)  ~ 
{!! 	
routes"" 
."" "
MapAreaControllerRoute"" )
("") *
name## 
:## 
$str## "
,##" #
areaName$$ 
:$$ 
$str$$ .
,$$. /
pattern%% 
:%% 
$str%% ,
,%%, -
defaults&& 
:&& 
new&& 
{&& 

controller&&  *
=&&+ ,
$str&&- 9
,&&9 :
action&&; A
=&&B C
$str&&D N
}&&O P
)'' 
;''
}(( 	
})) 
}** 