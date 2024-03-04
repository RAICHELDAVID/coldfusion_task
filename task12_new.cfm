<!---<cfset n = 0>

<cfif isDefined("form.submit")>
    <cfset n = form.n>
    <cfset example = new components.task12_new()>
   
    <cfset nthFirstName = example.getNthFirstName(n)>
</cfif>

<!DOCTYPE html>
<html>
<head>
    <title>Show Nth Row First Name</title>
</head>
<body>
    <form action="components/task12_new.cfc?method=getNthFirstName" method="post">
        <label for="rowNumber">Enter a number less than 10:</label><br>
        <input type="number" id="rowNumber" name="rowNumber" min="1" max="9"><br>
        <input type="submit" value="Submit">
    </form>
    
    <cfif isDefined("names")>
        <h2>All Names:</h2>
        <cfoutput query="names">
            #firstname# #lastname#<br>
        </cfoutput>
        
        <cfif n GT 0>
            <h2>Nth First Name:</h2>
            <cfoutput>#nthFirstName#</cfoutput>
        </cfif>
    </cfif>
</body>
</html>
--->



















<cfset n = 0>
<cfif isDefined("form.submit")>
    <cfset n = form.rowNumber>
    <cfset example = new components.task12_new()>
   
    <cfset nthFirstName = example.showNthRow(n)>
</cfif>
<!DOCTYPE html>
<html>
<head>
    <title>Show Nth Row from Database</title>
</head>
<body>
    <h2>Enter a number less than 10 and click Submit</h2>
    <form action="./components/task12_new.cfc?method=showNthRow" method="post">
        <label for="rowNumber">Enter a number:</label>
        <input type="number" id="rowNumber" name="rowNumber" min="1" max="10" required>
        <button type="submit">Submit</button>
    </form>
</body>
</html>

