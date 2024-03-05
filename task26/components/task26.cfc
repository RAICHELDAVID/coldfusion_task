<cfcomponent>

    <cffunction name="processUpload" access="public" returntype="string">
        <cfargument name="uploadedFilePath" type="string" required="true">
        
        <cfif fileExists(arguments.uploadedFilePath) AND (arguments.uploadedFilePath) gt 0>
            <cfset fileContent = fileRead(arguments.uploadedFilePath)>
               
            <cfset words = reMatch("\b\w+\b", fileContent)>
               
            <cfloop array="#words#" index="word">
                <cfquery datasource="demo" result="insertResult">
                    INSERT INTO WordTable_TASK26 (Word) VALUES (<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#word#">)
                </cfquery>
            </cfloop>
            
            <cfreturn "File uploaded and words saved to the database successfully.">
            
        <cfelse>
            <cfreturn "File is empty or does not exist.">
        </cfif>
    </cffunction>

</cfcomponent>
