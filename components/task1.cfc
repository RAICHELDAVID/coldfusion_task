<cfcomponent>
    <cffunction name="processFeedback" access="remote" returntype="string">
        <cfargument name="ratingValue" type="numeric" required="true">

        <cfif arguments.ratingValue EQ 5>
            <cfreturn "very good">
        <cfelseif arguments.ratingValue EQ 4>
            <cfreturn "Good">
        <cfelseif arguments.ratingValue EQ 3>
            <cfreturn "Fair">
        <cfelseif arguments.ratingValue EQ 2 OR arguments.ratingValue EQ 1>
            <cfreturn "OK">
        <cfelse>
            <cfreturn "Invalid input. Please enter a number between 1 and 5.">
        </cfif>
    </cffunction>
</cfcomponent>
