<cfcomponent>
    <cffunction  name="validationFunction" access="remote" enctype="multipart/form-data">
        <cfargument  name="name" required="true" type="string">
        <cfargument  name="description" required="true" type="string">
        <cfargument  name="imageUpload" required="true" type="string">
<cfset maxSize =1*1024*1024 >
<cfif cffile.fileSize lte maxSize||cffile.serverFileExt eq "jpg"||cffile.serverFileExt eq "jpeg"||cffile.serverFileExt eq "png"||cffile.serverFileExt eq "gif">
    <cfset thumbnailPath = expandPath('assets/thumbnail/')>
    <cfset thumbnailFileName = "thumbnail_" & cffile.serverFileName>
    <cfset thumbnailFileName = thumbnailFileName & "." & cffile.serverFileExt>
    <cfimage action="resize" source="#cffile.serverDirectory#\#cffile.serverFile#" destination="#thumbnailPath#\#thumbnailFileName#" width="20" height="20" overwrite="true" name="thumbnailimage">
<cfelse>
    <cfoutput>
        "file cannot be added"
        <cfabort>
    </cfoutput>
</cfif>
<cfquery name="addImage" datasource="demo">
insert into task14
values (
    <cfqueryparam value="#name#" cfsqltype="cf_sql_varchar">,
    <cfqueryparam value="#description#" cfsqltype="cf_sql_varchar">,
    <cfqueryparam value="#imageUpload#" cfsqltype="cf_sql_varchar">,
    <cfqueryparam value="#thumbnailimage#" cfsqltype="cf_sql_varchar">
)
</cfquery>
                
            <cflocation url = "list.cfm?name="  #name#  "&name="  #description#  "&description="  #imageUpload#  "&imageUpload="   #thumbnailimage#  "&thumbnailimage=">


    </cffunction>
</cfcomponent>

