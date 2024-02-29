<cfcomponent>
    <cffunction name="subscribe" access="remote" returnType="string">
        <cfargument name="firstName" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        <!--- Your database logic to insert into the database --->
        <cfset var successMessage = "Subscription successful"><!--- Replace with actual logic to insert into database --->
        <cfreturn successMessage>
    </cffunction>
</cfcomponent>
