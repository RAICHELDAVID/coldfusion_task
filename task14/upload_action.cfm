<cfset imageHandler = new components.ImageHandler()>

<cftry>
    <cfset response = imageHandler.uploadImage(
        form.imageName,
        form.description,
        form.image
    )>
    <cfcatch>
        <cfset response = { success: false, message: "Error uploading image." }>
    </cfcatch>
</cftry>

<cfoutput>
    <cfif response.success>
        <p>Image uploaded successfully: #response.imageName#</p>
        <a href="list.cfm">View Image List</a>
    <cfelse>
        <p>Error: #response.message#</p>
    </cfif>
</cfoutput>
