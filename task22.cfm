<!DOCTYPE html>
<html>
<head>
    <title>JSON Data Table</title>
</head>
<body>
    <h1>JSON Data in Table Format</h1>
    <cfset jsonData = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]'>

    <!--- Include the DisplayTable.cfc file --->
    <cfobject type="component" name="myCFC" component="components.task22">

    <!--- Call the displayJsonAsTable method of the DisplayTable component and pass JSON data --->
    <cfoutput>#myCFC.displayJsonAsTable(jsonData)#</cfoutput>
</body>
</html>
