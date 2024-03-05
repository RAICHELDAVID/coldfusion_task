<!--- MultiplyComponent.cfc --->
<cfcomponent>
    <!--- Function to multiply numbers --->
    <cffunction name="multiply" access="public" returntype="numeric">
        <cfargument name="numbers" type="array" required="true">
        <cfset var result = 1>
        <cfloop array="#arguments.numbers#" index="num">
            <cfset result *= num>
        </cfloop>
        <cfreturn result>
    </cffunction>
</cfcomponent>
