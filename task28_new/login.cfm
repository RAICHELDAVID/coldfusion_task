<cfif structKeyExists(form, "username") AND structKeyExists(form, "password")>
    <cfset UserObj = createObject("component", "components.User")>
    <cfset user = UserObj.login(form.username, form.password)>
    <cfif user.userid NEQ 0>
        <cfset session.userid = user.userid>
        <cfset session.username = user.username>
        <cfset session.role = user.role>
        <cflocation url="admin.cfm" addtoken="false">
    <cfelse>
        <cfoutput>Login failed. Please try again.</cfoutput>
    </cfif>
</cfif>

<form method="post" action="login.cfm">
    <label for="username">Username:</label>
    <input type="text" name="username" id="username"><br>
    <label for="password">Password:</label>
    <input type="password" name="password" id="password"><br>
    <input type="submit" value="Login">
</form>
