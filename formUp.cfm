<cfif LEN (form.username )>

     
    <cfoutput>
        Hello  #form.username# your DOB = #dateFormat(form.dob, "long")#
        <br>
        Today you are #dateDiff('yyyy', form.dob, now())#
        <br>
        <cfset form.username = "Abul Qasim">
        Also your new name is #form.username#
        ddd
    </cfoutput>




</cfif> 