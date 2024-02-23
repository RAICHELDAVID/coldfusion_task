<!DOCTYPE html>
<html>
<head>
    <title>Feedback Result</title>
</head>
<body>
    <h2>Feedback Result</h2>

    <cfparam name="form.ratingValue" default="0">
    

    <cfif form.ratingValue EQ 5>
        <p>Very good</p>
    <cfelseif form.ratingValue EQ 4>
    
        <p>Good</p>
    <cfelseif form.ratingValue EQ 3>
        <p>Fair</p>
    <cfelseif form.ratingValue EQ 2 OR form.ratingValue EQ 1>
        <p>OK</p>
    <cfelse>
        <p>Invalid input. Please enter a number between 1 and 5.</p>
    </cfif>

    <p><a href="task1.cfm">Go back</a></p>
</body>
</html>
