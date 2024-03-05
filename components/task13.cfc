<cfcomponent>

    <cffunction name="processFeedback"  access="remote" returnType="string">
        <cfargument name="keyword" type="string" required="true">
        <cfset textContent = "the quick brown fox jumps over the lazy dog">
        <cfset keyword = LCase(trim(arguments.keyword))>
        <cfset occurrences = 0>
        
        <!--- Loop through each word in the text content --->
        <cfloop list="#textContent#" index="word" delimiters=" ">
            <!--- Check if the current word matches the keyword --->
            <cfif LCase(word) eq keyword>
                <!--- Increment the occurrences count --->
                <cfset occurrences = occurrences + 1>
            </cfif>
        </cfloop>

        <cfreturn "Found the keyword '#arguments.keyword#' #occurrences# time(s) - #textContent#">
    </cffunction>

</cfcomponent>