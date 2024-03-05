<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visits Counter</title>
</head>
<body>

<cfparam name="cookie.VisitsCounter" default="0">

<cfif IsDefined("form.submitButton")>
    <cfset cookie.VisitsCounter = cookie.VisitsCounter + 1>
</cfif>

<form method="post">
    <input type="submit" name="submitButton" value="Increment Visits Counter">
</form>

<p>Visits Counter: <cfdump var="#cookie.VisitsCounter#"></p>

<!--- Set cookie expiration to Session (expires when browser session ends) --->
<cfcookie name="VisitsCounter" value="#cookie.VisitsCounter#" expires="Session">
<script>
window.addEventListener("beforeunload", function() {
    document.cookie = "VisitsCounter=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/task19;";
});
</script>                                                             

</body>
</html>
