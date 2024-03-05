<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Subscribe Newsletter</title>
</head>
<body>

<cfparam name="form.email" default="">
<cfparam name="form.captcha" default="">

<!--- Generate Captcha using cfimage --->
<cfset captchaText = RandRange(1000, 9999)>
<cfimage action="captcha" text="#captchaText#" width="200" height="50">

<form method="post">
    <label for="captcha">Captcha:</label>
    <input type="text" id="captcha" name="captcha" required><br><br>
    
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" required><br><br>
    
    <input type="submit" name="submit" value="Submit">
</form>

<cfif IsDefined("form.submit")>
    <cfif form.captcha EQ session.captcha>
        <!--- Perform email validation --->
        <cfif isValid("email", form.email)>
            <p style="color:green;">Email Address successfully subscribed to our newsletter.</p>
        <cfelse>
            <p style="color:red;">Please enter a valid email address.</p>
        </cfif>
    <cfelse>
        <p style="color:red;">Incorrect captcha. Please try again.</p>
    </cfif>
</cfif>

<!--- Store captcha text in session for validation --->
<cfset session.captcha = captchaText>

</body>
</html>
