<cfquery name='LoginCheck' datasource='NjiTestSQLSrvr'>
select 
    first_name, 
    zip_code
from 
    Sales.customers 
where 
    first_name = '#form.Username#'
and zip_code   = '#form.Password#'
</cfquery>

<cfoutput>
    <cfif LoginCheck.RecordCount GT 0>
        <cfset username = '#form.Username#'>
        <cfset password = '#form.Password#'>
        <cfinclude template="load.cfm">
    <cfelse>
        Wrong pass try again
    </cfif>
</cfoutput>