

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
  
    <cfif name2 EQ 'Qasim'>
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
    </cfloop>
  
  
  </cfoutput> 
  
  
  
  