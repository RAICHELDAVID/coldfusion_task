<!DOCTYPE html>
<html>
   <head>
      <title>Login</title>
   </head>
   <body>
      <h2>Login Page</h2>
      <cfif IsDefined("url.logout")>
      <p style="color:green;">You have been logged out successfully.</p>
      </cfif>
      <cfif IsDefined("form.submit")>
      <cfset username = form.username>
      <cfset password = form.password>
      <cfif username EQ "raichel" AND password EQ "raichel">
      <cfset session.loggedIn = true>
      <cflocation url="../task27/welcome.cfm">
      <cfelse>
      <p style="color:red;">Invalid username or password. Please try again.</p>
      </cfif>
      </cfif>
      <cfif IsDefined("url.logout")>
      <cfset StructDelete(session, "username")>
      <cfset StructDelete(session, "loggedIn")>
      <cflocation url="../task27/login.cfm">
      </cfif>
      <form method="post" action="../task27/login.cfm">
         <label for="username">Username:</label><br>
         <input type="text" id="username" name="username"><br>
         <label for="password">Password:</label><br>
         <input type="password" id="password" name="password"><br><br>
         <input type="submit" name="submit" value="Login">
      </form>
   </body>
</html>