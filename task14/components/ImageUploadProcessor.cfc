<cfcomponent>

    <cffunction name="processForm" access="remote" returntype="struct">
        <cfargument name="formData" type="struct" required="true">
        
        <cfset var result = {}>
        
        <cftry>
            <!--- Check if a file has been uploaded --->
            <cfif structKeyExists(form, "imageFile") and form.imageFile neq "">
                <!--- Define allowed file types --->
                <cfset allowedFileTypes = "jpg,jpeg,png,gif">
                
                <!--- Define maximum file size in bytes (1 MB) --->
                <cfset maxFileSize = 1024 * 1024>
                
                <!--- Get uploaded file details --->
                <cfset uploadedFile = form.imageFile>
                <cfset uploadedFileName = uploadedFile.serverFile>
                <cfset uploadedFileSize = uploadedFile.fileSize>
                <cfset uploadedFileType = listLast(uploadedFile.serverFile, ".")>
                
                <!--- Check if the uploaded file type is allowed --->
                <cfif listFindNoCase(allowedFileTypes, uploadedFileType)>
                    <!--- Check if the file size is within the allowed limit --->
                    <cfif uploadedFileSize lte maxFileSize>
                        <!--- Define the upload directory where the images will be stored --->
                        <cfset uploadDirectory = expandPath("./uploads/")>
                        
                        <!--- Check if the directory exists, if not create it --->
                        <cfif not directoryExists(uploadDirectory)>
                            <cfdirectory action="create" directory="#uploadDirectory#">
                        </cfif>
                        
                        <!--- Upload the file to the server --->
                        <cffile action="upload" filefield="imageFile" destination="#uploadDirectory#" nameconflict="makeunique">
                        
                        <!--- Get form data --->
                        <cfset imageName = form.imageName>
                        <cfset imageDescription = form.imageDescription>
                        
                        <!--- Set success response --->
                        <cfset result.success = true>
                        <cfset result.imageName = imageName>
                        <cfset result.imageDescription = imageDescription>
                        <cfset result.uploadedFileName = uploadedFileName>
                    <cfelse>
                        <!--- File size exceeds the limit, set error response --->
                        <cfset result.success = false>
                        <cfset result.error = "File size exceeds the limit. Maximum allowed size is 1 MB.">
                    </cfif>
                <cfelse>
                    <!--- File type is not allowed, set error response --->
                    <cfset result.success = false>
                    <cfset result.error = "Only JPG, PNG, and GIF files are allowed.">
                </cfif>
            <cfelse>
                <!--- If no file selected, set error response --->
                <cfset result.success = false>
                <cfset result.error = "Please select an image to upload.">
            </cfif>
            
            <cfcatch>
                <!--- If an error occurs during upload, set error response --->
                <cfset result.success = false>
                <cfset result.error = "An error occurred during image upload.">
            </cfcatch>
        </cftry>
        
        <cfreturn result>
    </cffunction>

</cfcomponent>
