<!--- 
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
---->
<!-- ShowNthRow.cfc -->
<!-- task12_new.cfc -->
<!-- ShowNthRow.cfc -->














<cfcomponent>
    <cffunction name="showNthRow" access="remote" returnType="string">
        <cfargument name="n" type="numeric" required="true">

        <!--- Establish database connection --->
        <cfset dsn = "demo">
        <cfset conn = datasource.getConnection(dsn)>

        <!--- Retrieve all data from the table --->
        <cfset query = "SELECT * FROM persons">
        <cfset statement = conn.prepareStatement(query)>
        <cfset result = statement.executeQuery()>

        <cfsavecontent variable="output">
            <table border="1">
                <tr>
                    <th>Firstname</th>
                    <th>Lastname</th>
                </tr>
                <cfloop query="result">
                    <tr>
                        <td>#result.firstname#</td>
                        <td>#result.lastname#</td>
                    </tr>
                </cfloop>
            </table>
        </cfsavecontent>

        <!--- Retrieve nth row's firstname --->
        <cfset nthRowQuery = "SELECT firstName FROM PERSONS OFFSET #arguments.n-1# ROWS FETCH NEXT 1 ROWS ONLY">
        <cfset nthRowStatement = conn.prepareStatement(nthRowQuery)>
        <cfset nthRowResult = nthRowStatement.executeQuery()>
        <cfset nthRowResult.next()>
        <cfset nthRowFirstname = nthRowResult.getString("firstName")>

        <!--- Close database connection --->
        <cfset statement.close()>
        <cfset nthRowStatement.close()>
        <cfset conn.close()>

        <!--- Return output along with nth row's firstname --->
        <cfreturn output & "<p>The firstname of the #arguments.n#th row is: #nthRowFirstname#</p>">
    </cffunction>
</cfcomponent>
