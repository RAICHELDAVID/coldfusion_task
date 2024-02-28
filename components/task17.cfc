<cfcomponent>
    <cffunction name="processInput" access="remote" >
        <cfargument name="number" type="numeric" required="true">
        
        <cfset var output = "">
        
        <cfloop from="1" to="#arguments.number#" index="i">
            <cfif i%2==0>
                <p style="color:green;">THE NUMBER <cfoutput>#i#
                </cfoutput> IS EVEN</p>
            <cfelse>
                <p style="color:blue;">THE NUMBER <cfoutput>#i#
                </cfoutput> IS ODD</p>
            </cfif>
        </cfloop>
        
    </cffunction>
</cfcomponent>
