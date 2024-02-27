<!DOCTYPE html>
<html>
<head>
    <title>Key-Value Form</title>
</head>
<body>

    <h2>Key-Value Form</h2>

    <!-- Form to submit key-value pairs -->
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label for="key">Key:</label>
        <input type="text" id="key" name="key" required><br><br>
        
        <label for="value">Value:</label>
        <input type="text" id="value" name="value" required><br><br>
        
        <input type="submit" value="Submit">
    </form>

    <hr>

    <h3>Submitted Key-Value Pairs:</h3>

    <cfparam name="session.keyValuePairs" default="#structNew()#"> 
    <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
        <cfset session.keyValuePairs[form.key] = form.value>
    </cfif>



    <cfdump var="#session.keyValuePairs#" label="Key-Value Pairs">

</body>
</html>
