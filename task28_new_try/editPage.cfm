<!DOCTYPE html>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
    <cfdump  var="#pageid#">
    <cfoutput>
        <form action="components/page.cfc?method=editPage" method="post">
            <input type="hidden" id="pageid" name="pageid" value="#pageid#">
            <label for="pagename">Page Name:</label><br>
            <input type="text" id="pagename" name="pagename" required><br>
            <label for="pagedesc">Page Description:</label><br>
            <textarea id="pagedesc" name="pagedesc" required></textarea><br><br>
            <input type="submit" value="Update Page">
        </form>
    </cfoutput>
    <cfdump  var="#form#">
    <cfset variable = "#form.pageid#">
    <cfdump  var="#variable#">
    <!--- <cfparam name="form.pageid" default=0>
    <cfparam name="form.pagename" default="">
    <cfparam name="form.pagedesc" default=""> --->

    <!--- <cfif isDefined("form.pageid") and isDefined("form.pagename") and isDefined("form.pagedesc")>
        <cfset pageManager = createObject("component", "components.page")>
        <cfset pageManager.editPage(form.pageid, form.pagename, form.pagedesc)>
        
        <cfoutput>Page updated successfully!</cfoutput>
    <cfelse>
        <cfoutput>Form fields are not complete!</cfoutput>
    </cfif> --->

</body>
</html>
