<cfcomponent>
    <cffunction name="processResult" access="remote" returntype="string">
        

    <cfparam name="form.numbers" default="">

 <cfset inputNumbers = form.numbers>

    <cfoutput>
        Input Numbers: #inputNumbers#<br>
        Result: 

        <cfloop list="#inputNumbers#" index="number">
            <cfif number MOD 3 EQ 0>
                #number#,
            <cfelse>
                <cfcontinue>
            </cfif>
        </cfloop>
    </cfoutput>




    </cffunction>

</cfcomponent>
