
<cfif NOT structKeyExists(session, "userid")>
    <cflocation url="login.cfm" addtoken="false">
</cfif>

<cfif session.role NEQ "admin" AND session.role NEQ "editor">
    <cfoutput>Access Denied!</cfoutput>
    <cfabort>
</cfif>

<cfset PageObj = createObject("component", "components.Page")>

<cfif structKeyExists(form, "pagename") AND structKeyExists(form, "pagedesc")>
    <cfset PageObj.addPage(form.pagename, form.pagedesc)>
</cfif>

<form method="post" action="add_page.cfm">
    <label for="pagename">Page Name:</label>
    <input type="text" name="pagename" id="pagename"><br>
    <label for="pagedesc">Page Description:</label>
    <input type="text" name="pagedesc" id="pagedesc"><br>
    <input type="submit" value="Add Page">
</form>
<a href="admin.cfm">Back to Admin Panel</a>
