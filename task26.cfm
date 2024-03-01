<cfif structKeyExists(form, "upload")>
    <!--- Check if a file was uploaded --->
    <cfif isDefined("form.upload") AND form.upload NEQ "">
        <!--- Process the uploaded file --->


<cfset uploadedFilePath = "C:/ColdFusion2023/cfusion/wwwroot/coldfusion_task/coldfusion_task/file.txt">

<cfif fileExists(uploadedFilePath) AND (uploadedFilePath) gt 0>
    <!-- File contains data -->
    <cfset fileContent = fileRead(uploadedFilePath)>
    <!--- Read the file content --->
        <!--- Read the file content --->
        <cfset fileContent = fileRead(uploadedFilePath)>
        
        <!--- Split the file content into individual words --->
        <cfset words = reMatch("\\b\\w+\\b", fileContent)>
        
        <!--- Save each word to the database --->
        <cfloop array="#words#" index="word">
            <cfquery datasource="demo" result="insertResult">
                INSERT INTO WordTable_TASK26 (Word) VALUES (<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#word#">)
            </cfquery>
        </cfloop>
        
        <!--- Display success message --->
        <cfoutput>
            <p>File uploaded and words saved to the database successfully.</p>
        </cfoutput>
    <!-- Proceed with further processing -->
<cfelse>
    <!-- File is empty or does not exist -->
    <cfoutput>File is empty or does not exist.</cfoutput>
</cfif>





    <cfelse>
        <!--- No file uploaded --->
        <cfoutput>
            <p>Please select a file to upload.</p>
        </cfoutput>
    </cfif>
</cfif>

<!--- Display upload form --->
<form action="task26.cfm" method="post" enctype="multipart/form-data">
    <input type="file" name="upload">
    <button type="submit">Upload</button>
</form>
