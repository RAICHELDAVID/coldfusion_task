<!--- query.cfc --->
<cfcomponent>
    <cffunction name="getNthFirstName" access="remote" returntype="string">
        <cfargument name="rowNumber" type="numeric" required="true">
        <cfquery name="dataQuery" datasource="demo">
            SELECT * FROM persons
        </cfquery>
        
        <!--- Display all data from the table --->
        <cfoutput query="dataQuery">
            First Name: #dataQuery.FirstName# - Last Name: #dataQuery.LastName#<br>
        </cfoutput>
        
        <!--- Display nth row's first name --->
        <cfquery name="nthRowQuery" datasource="demo">
            SELECT FirstName FROM persons OFFSET #arguments.rowNumber-1# ROWS FETCH NEXT 1 ROW ONLY
        </cfquery>
        <cfoutput query="nthRowQuery">
            Nth Row First Name: #nthRowQuery.FirstName#
        </cfoutput>
    </cffunction>
</cfcomponent>
