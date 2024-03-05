
<cfif NOT structKeyExists(session, "userid")>
    <cflocation url="login.cfm" addtoken="false">
</cfif>

<cfif session.role NEQ "admin" AND session.role NEQ "editor">
    <cfoutput>Access Denied!</cfoutput>
    <cfabort>
</cfif>

<cfset UserObj = createObject("component", "components.User")>
<cfset PageObj = createObject("component", "components.Page")>

<cfset pages = PageObj.getAllPages()>

<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
    <h1>Welcome, #session.username#</h1>
    <h2>Pages:</h2>

    <ul>
    <cfloop query="pages">
        <li>#pages.pagename# - #pages.pagedesc# <a href="edit_page.cfm?pageid=#pages.pageid#">Edit</a> <a href="delete_page.cfm?pageid=#pages.pageid#">Delete</a></li>
    </cfloop>
</ul>

    <a href="add_page.cfm">Add Page</a>
    <a href="logout.cfm">Logout</a>
</body>
</html>
