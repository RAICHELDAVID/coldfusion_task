<cfcomponent displayname="User" output="false">

    <cffunction name="login" access="public" returntype="struct">
        <cfargument name="username" type="string" required="true">
        <cfargument name="password" type="string" required="true">

        <cfset var user = {}>
        <cfset user.userid = 0>
        <cfset user.username = "">
        <cfset user.role = "">
        
        <cfquery name="getUser" datasource="demo">
            SELECT userid, username, role
            FROM user_table
            WHERE username = <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
            AND pwd = <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfif getUser.recordCount>
            <cfset user.userid = getUser.userid>
            <cfset user.username = getUser.username>
            <cfset user.role = getUser.role>
        </cfif>
        
        <cfreturn user>
    </cffunction>

</cfcomponent>
