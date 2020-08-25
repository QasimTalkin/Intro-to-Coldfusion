<cfif isDefined("username") AND isDefined("password") >
    <cfquery name ='Cf_Query' datasource='NjiTestSQLSrvr'>
        select *
        from 
            Sales.customers 
        where 
            first_name = '#username#'
        and zip_code   = '#password#'
    </cfquery>
    <cfdump var="#Cf_Query#">

    <cfoutput>
    <h1> 
        Information for #Cf_Query.Email#
    </h1>
    </cfoutput>
</cfif>