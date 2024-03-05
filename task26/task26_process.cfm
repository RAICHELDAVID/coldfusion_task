<cfif structKeyExists(form, "upload")>
    <cfif isDefined("form.upload") AND form.upload NEQ "">
        <cfset uploadedFilePath = "C:/ColdFusion2023/cfusion/wwwroot/coldfusion_task/coldfusion_task/task26/files/file.txt">
        <cfset task26 = new components.task26()>
        <cfset resultMessage = task26.processUpload(uploadedFilePath)>
        <cfoutput>#resultMessage#</cfoutput>
    <cfelse>
        <cfoutput>Please select a file to upload.</cfoutput>
    </cfif>
</cfif>
