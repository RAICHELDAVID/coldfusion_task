<cfcomponent>

    <cffunction name="init" access="public">
        <cfreturn this>
    </cffunction>

    <cffunction name="handleFormSubmission" access="public" returntype="void">
        <cfargument name="form" type="struct" required="true">

        <cfif not structKeyExists(session, "keyValues")>
            <cfset session.keyValues = structNew()>
        </cfif>
        
        <cfif structKeyExists(arguments.form, "key") and structKeyExists(arguments.form, "value") and structKeyExists(arguments.form, "submitted")>
            <cfset session.keyValues[arguments.form.key] = arguments.form.value>
        </cfif>
    </cffunction>

    <cffunction name="getKeyValues" access="public" returntype="struct">
        <cfreturn session.keyValues>
    </cffunction>

</cfcomponent>
