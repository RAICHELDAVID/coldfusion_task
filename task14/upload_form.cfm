<!DOCTYPE html>
<html>
<head>
    <title>Image Upload Form</title>
</head>
<body>

<h2>Image Upload Form</h2>
<cfoutput>
<form action="components/ImageUploadProcessor.cfc?method=processForm" method="post">
<!---<form action="components/page.cfc?method=addPage" method="post">--->

    <label for="imageName">Image Name:</label><br>
    <input type="text" name="imageName" id="imageName" required><br><br>
    
    <label for="imageDescription">Image Description:</label><br>
    <textarea name="imageDescription" id="imageDescription" required></textarea><br><br>
    
    <label for="imageFile">Select Image:</label><br>
    <input type="file" name="imageFile" id="imageFile" required><br><br>
    
    <input type="submit" name="submit" value="Upload Image">
</form>

<!---<cfparam name="form.imageName" default="">
<cfparam name="form.imageDescription" default="">
<cfparam name="form.imageFile" default="">
   <cfset myComponent = createObject("component", "components.ImageUploadProcessor")>

<cfif structKeyExists(form, "submit")>
    <!--- Handle form submission --->
    <cfset form = {
        imageName = form.imageName,
        imageDescription = form.imageDescription,
        imageFile = form.imageFile
        <!--- Add more form fields as needed --->
    }>
    <cfset result = myComponent.processForm(form)>
    <cfoutput>#result#</cfoutput>
</cfif--->
<cfobject component="components.ImageUploadProcessor" name="MyCFC">
<cfset formData = {
    imageName = form.imageName,
    imageDescription = form.imageDescription,
    imageFile = form.imageFile

   
}>
<cfset MyCFC.processForm(formData)>

</cfoutput>
<cfdump  var="#form.imageName#">

</body>
</html>

