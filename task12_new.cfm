<cfset n = 0>

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
