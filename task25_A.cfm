<!--- Establish a database connection --->
<cfset dsn = "demo">
<cfquery datasource="#dsn#" name="dbConnection">
    SELECT 1
</cfquery>

<cfif dbConnection.recordCount>
    <!--- Database connection successful, proceed with your code --->
    
    <cfif structKeyExists(form, "submit")>
        <!--- Form submitted, process the text input --->
        
        <!--- Split the text into an array of words --->
        <cfset text = form.textAreaName>
        <cfset wordsArray = listToArray(text, " ")>
        
        <!--- Insert each word into the database as individual records --->
        <cfloop array="#wordsArray#" index="word">
            <cfquery name="insertWord" datasource="#dsn#">
                INSERT INTO WordTable_TASK25 (Word) VALUES (<cfqueryparam value="#word#" cfsqltype="CF_SQL_VARCHAR">)
            </cfquery>
        </cfloop>
        
        <!--- Optional: Display success message or redirect to another page --->
        <cfoutput>Data saved successfully!</cfoutput>
        
    <cfelse>
        <!--- Display the form --->
        <form method="post" action="task25_A.cfm">
            <textarea name="textAreaName"></textarea>
            <input type="submit" name="submit" value="Submit">
        </form>
    </cfif>
    
<cfelse>
    <!--- Database connection failed --->
    <cfoutput>Error: Unable to establish a database connection.</cfoutput>
</cfif>
