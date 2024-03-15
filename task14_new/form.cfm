<!DOCTYPE html>
<html>
<head>
    <title>image Page</title>
</head>
<body>
    <cfoutput>
        <form action="form.cfm" method="post" enctype="multipart/form-data">
            <label>Image name</label>
            <input type="text" name="name"><br>
            <label>Image description</label>
            <input type="text" name="description"><br>
            <label>upload image</label>
            <input type="file" name="imageUpload" ><br>
            <input type="submit">
        </form>
    </cfoutput>
                <cffile  action="upload"
                    destination="#expandPath("assets/")#"
                    filefield="imageUpload"
                    nameconflict="overwrite"
                    accept="image/jpg, image/gif, image/png, image/jpeg" >
            <cfinvoke component="components.validation" method="validationFunction" argumentCollection="#Form#">
</body>
</html>


<!---<cfoutput>
    <form action="components/validation.cfc?method=uploadFile" method="post" enctype="multipart/form-data">
        <input type="text" name="name">
        <input type="text" name="description">
        <input type="file" name="uploadedFile" accept=".jpg, .jpeg, .png, .gif">
        <input type="submit" name="upload" value="Upload">
    </form>
    
</cfoutput>--->
<!---<cfcomponent>
    <cffunction name="uploadFile" access="remote" >
        <cfargument name="name" type="string" required="true">
        <cfargument name="description" type="string" required="true">
        <cfargument name="uploadedFile" type="string" required="true">


        <cfset allowedExtensions = ".jpg,.jpeg,.png,.gif">
        <cfset maxFileSize = 1 * 1024 * 1024>

        <cfif len(arguments.uploadedFile)>
            <cffile action="upload" filefield="uploadedFile" destination="#expandPath('assets/')#" accept="image/*">

            <cfif cffile.fileWasSaved>
                <cfif cffile.fileSize lte #maxFileSize#>
                    <cfif listFindNoCase(arguments.allowedExtensions, "." & cffile.serverFileExt)>
                        <cfset thumbnailPath = expandPath('assets/thumbnail/')>
                        <cfset thumbnailFileName = "thumbnail_" & cffile.serverFileName>
                        <cfset thumbnailFileName = thumbnailFileName & "." & cffile.serverFileExt> <!-- Append the original file's extension -->

                        <cfimage action="resize" source="#cffile.serverDirectory#\#cffile.serverFile#" destination="#thumbnailPath#\#thumbnailFileName#" width="20" height="20" overwrite="true">
                      <cfimage source="#thumbnailPath#\#thumbnailFileName#" action="writeToBrowser">
                       <cfoutput>#arguments.name#</cfoutput>
                       </cfif>
                       </cfif>
                       </cfif
                        <cfquery name="insertIntoTable" datasource="demo">
                            INSERT INTO task14(ImangeName,descImage,ImageFile,thumbnail) 
                            VALUES(
                                <cfqueryparam value="#arguments.name#" cfsqltype="cf-sql-varchar">
                                <cfqueryparam value="#arguments.description#" cfsqltype="cf-sql-varchar">
                                <cfqueryparam value="#arguments.uploadedFile#" cfsqltype="cf-sql-varchar">
                            )
                        </cfquery>
                        
                   <cfelse>
                        <cfset response.success = false>
                        <cfset response.message = "Error: Unsupported file type. Please upload files with extensions .jpg, .jpeg, .png, or .gif.">
                        <cffile action="delete" file="#cffile.serverDirectory#\#cffile.serverFile#">
                    </cfif>
                <cfelse>
                    <cfset response.success = false>
                    <cfset response.message = "Error: File size exceeds #arguments.maxFileSize# bytes.">
                    <cffile action="delete" file="#cffile.serverDirectory#\#cffile.serverFile#">
                </cfif>
            <cfelse>
                <cfset response.success = false>
                <cfset response.message = "Error uploading file. Please try again.">
            </cfif>
        </cfif>

        <cfreturn response>
        </cfif>
    </cffunction>
</cfcomponent>--->




