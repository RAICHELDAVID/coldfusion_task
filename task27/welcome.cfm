<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome Page</h2>
    <cfif NOT IsDefined("session.loggedIn") OR NOT session.loggedIn>
        <cflocation url="../task27/login.cfm">
    </cfif>
    <p>Welcome, user!</p>
    <a href="login.cfm?logout=true">Logout</a>
</body>
</html>
