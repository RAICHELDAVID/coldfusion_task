<cfcomponent>

    <cffunction name="handleFormSubmission" access="public" returntype="void">
        <cfargument name="form" type="struct" required="true">

        <!-- Initialize or retrieve the structure from session -->
        <cfif not structKeyExists(session, "formData")>
            <cfset session.formData = structNew()>
        </cfif>
        
        <!-- Handle form submission -->
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value")>
            <cfset key = trim(arguments.form.key)>
            <cfset value = trim(arguments.form.value)>
            <!-- Check if the key already exists -->
            <cfif not structKeyExists(session.formData, key)>
                <!-- Add key-value pair to the structure -->
                <cfset session.formData[key] = value>
            <cfelse>
                <cfoutput>#key# already present. Cannot add again.</cfoutput>
            </cfif>
        </cfif>
    </cffunction>

</cfcomponent>
