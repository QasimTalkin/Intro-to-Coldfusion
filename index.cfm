

<!---  User sample form  --->
<cfoutput>

  <H1> Intro CFML <br> ---------------------------------- </H1> 
  <cfset userNAme = 'Qasim'>
  <h3> 
  #userNAme# to  webroot.
  </h3>

  <form action="formUP.cfm" method='post'>
    Name : <input type = 'text' name = 'username' > <br>
    DOfB : <input type = 'text' name = 'dob' > <br>

    <!---default value --->
    Todays its #dateFormat(now(), 'long')# <br>
    <input type = 'submit' value = 'Click here' >
  </form>
</cfoutput>



<!---     List Array Structure    --->

<!--- List --->
<cfset QasimNames = 'Qasim, Abul, Mohammed'>
<!--- Array single Dim      --->
<cfset items = arrayNew(1)>
<cfset items[1] = 'lamp'>
<cfset items[2] = 'pen'>
<cfset items[3] = 'mouse'>
<cfset items[4] = 'key'>
<!--- Structe -> jsaon objects? with keys --->


<cfoutput>
    List of Qasim names : #QasimNames# 
    <br>Sorted list of Qasim Names  : #ListSort(QasimNames, 'text', 'asc')#
    <br>Lenght of list : #listLen(QasimNames)#

    <cfdump  var=#items#>
    <br>Array to list -> #arrayToList(items, '  --  ')#
    <br>length of Arry : #arrayLen(items)#


<!--- Conditionl Processing --->

  <H1> Conditionl Processing  <br> ----------------------------------  </H1> 

  <cfset name1 = 'Qasim'>
  <cfset name2 = 'Abul'>

  <cfif name1 NEQ name2>
    #name1# not Equal to #name2#
  </cfif> <br>

<!---  <cfif name2 EQ 'Qasim'>
    #name2# eqal 'Qasim'
  <cfelseif isDefined('url.month') EQ TRUE AND (url.month GT 1 AND url.month LT 11)>
    'Come on man selct a better month something above #url.month#' 
  <cfelse><br>
    Good month choise #MonthAsString(url.month)#     <br>
    also #name2# not eqaul to #name1#
  </cfif><br> 
  <cfloop condition="url.month lt 13">
    Months left : #url.month# <br>
<cfset url.month++>
  </cfloop> --->
</cfoutput> 

<!--- SQL IN CFML --->

<H1> SQL IN CFML  <br> ----------------------------------  </H1> 



<cfoutput>
  <H2> 
    First Query Result 
  </H2>

  <cfquery name ='Cf_Query' datasource='NjiTestSQLSrvr'>

  Select top 1 * from sales.orders;

  </cfquery>
  <cfdump var="#Cf_Query#">"


  <h2> 
   Acessing each coloumn of the Query 
  </h2>
  <br>
 
  FIRST CUSTOMER ID : #Cf_Query.customer_id#  <br>
  SIXTH CUSTOMER ID : #Cf_Query.customer_id[7]#<br>
</cfoutput>

<!--- 
  <cfoutput query="Cf_Query" group='STAFF_ID'> 
  -------------------------------------- <br>
  CUSTOMER ID : #Cf_Query.customer_id#<br>
  ORDER STATUS : #Cf_Query.STAFF_ID# <br>
  RECORD COUT : #Cf_Query.RecordCount#<br>
</cfoutput>

--->
<h1> 
  Data driven pages. 
</h1>

<h2> 
Login sample using first name and ZipCode from db
</h2>

<form method='post' action='logincheck.cfm'> 
  <B> USERNAME : <B> <INPUT type ='text' size='19' name='Username'>  <BR>
  <B> PASSWORD : <B> <INPUT type ='password' size='19' name='Password'> <BR>
  <INPUT type='submit' name='login' value='Login'>
</form>