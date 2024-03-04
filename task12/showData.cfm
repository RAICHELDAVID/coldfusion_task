<!DOCTYPE html>
<html>
<head>
    <title>Show Data</title>
</head>
<body>
    <h2>All User Data:</h2>
    <cfset userData = CreateObject("component", "components.DataAccess").getUsers()>
    <cfoutput query="userData">
        <p>#userData.FirstName# #userData.LastName#</p>
    </cfoutput>
    
    <h2>Nth Row First Name:</h2>
    <cfset rowNumber = #form.rowNumber#>
    <cfset nthFirstName = CreateObject("component", "components.DataAccess").getNthFirstName(rowNumber)>
    <p>#nthFirstName#</p>
</body>
</html>
