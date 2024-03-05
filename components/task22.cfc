<cfcomponent>
    <cffunction name="displayJsonAsTable" access="public" returnType="string">
        <cfargument name="jsonData" type="string" required="true">
        
        <!--- Convert JSON data to a ColdFusion query object --->
        <cfset queryData = DeserializeJSON(arguments.jsonData)>
        
        <!--- Initialize the tableHTML variable --->
        <cfset var tableHTML = "">
        
        <!--- Create HTML table --->
        <cfset tableHTML = "<table border='1'>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Location</th>
                                </tr>
                            </thead>
                            <tbody>">
        <cfloop array="#queryData#" index="row">
            <cfset tableHTML &= "<tr>
                                    <td>#row.Name#</td>
                                    <td>#row.Age#</td>
                                    <td>#row.LOCATION#</td>
                                </tr>">
        </cfloop>
        <!--- Close HTML table --->
        <cfset tableHTML &= "</tbody>
                        </table>">
        
        <!--- Return HTML table --->
        <cfreturn tableHTML>
    </cffunction>
</cfcomponent>
