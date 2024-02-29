
/*<cfcomponent>
    <cffunction name="checkEmail" access="remote" returnType="string">
        <cfargument name="email" type="string" required="true">
        
        <!--- Define your datasource name --->
        <cfset var dataSource = "demo">

        <!--- Query to check if the email exists in the database --->
        <cfquery name="emailQuery" datasource="#dataSource#">
            SELECT COUNT(*) AS emailCount
            FROM dbo.task_24
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>

        <!--- Check the result of the query --->
        <cfif emailQuery.emailCount GT 0>
            <cfreturn "exists">
        <cfelse>
            <cfreturn "not_exists">
        </cfif>
    </cffunction>
</cfcomponent>*/

<cfcomponent>
    <cffunction name="checkEmail" access="remote" returnType="string">
        <cfargument name="email" type="string" required="true">

        <!--- Mocking the response for testing purposes --->
        <!--- You can change this logic to simulate different scenarios --->
        <cfif arguments.email eq "test@example.com">
            <cfreturn "exists">
        <cfelse>
            <cfreturn "not_exists">
        </cfif>
    </cffunction>
</cfcomponent>

