
<cfoutput>
    <form action="upload_form.cfm" method="post" enctype="multipart/form-data">
        <input type="text" name="name">
        <input type="text" name="description">
        <input type="file" name="uploadedFile" accept=".jpg, .jpeg, .png, .gif">
        <input type="submit" name="upload" value="Upload">
    </form>
</cfoutput>
    <cfparam name="form.uploadedFile" default="">
    <cfparam name="form.name" default="">
    <cfparam name="form.description" default="">
    <cfset allowedExtensions = ".jpg,.jpeg,.png,.gif">
    <cfset maxFileSize = 1 * 1024 * 1024> <!-- 1MB in bytes -->

    <cfif structKeyExists(form, "upload")>
        <cfset fileUploader = createObject("component", "components.imageUploadProcessor")>
        <cfset result = fileUploader.uploadFile(form.uploadedFile, form.name, form.description, allowedExtensions, maxFileSize)>
        <cfif result.success>
            <!-- Redirect to display_thumbnail.cfm with image name and thumbnail name -->
            <cfset thumbnailPageURL = "display_thumbnail.cfm?imageName=" & result.imageName & "&thumbnailName=" & result.thumbnailName>
            <cflocation url="#thumbnailPageURL#" addtoken="false">
        <cfelse>
            <cfoutput>#result.message#</cfoutput>
        </cfif>
    </cfif>


