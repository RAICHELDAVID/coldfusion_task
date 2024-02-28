<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Birthday Wishes</title>
</head>
<body>

<h1>Birthday Wishes</h1>

<cfparam name="form.babyName" default="">
<cfparam name="form.email" default="">
<cfparam name="form.wishes" default="">
<cfparam name="form.greetingImage" default="">

<cfif IsDefined("form.submit")>
    <!--- Perform form validation --->
    <cfif form.babyName EQ "" OR form.email EQ "" OR form.wishes EQ "" OR form.greetingImage EQ "">
        <p>Please fill in all fields.</p>
    <cfelse>
        <!--- Send the greeting email --->
        <cfmail to="raicheldavid22@gmail.com" from="raicheldavid22@gmail.com" subject="Happy Birthday!" type="html">
            <p>Dear #form.babyName#,</p>
            <p>Warm wishes on your special day!</p>
            <p>#form.wishes#</p>
                        <cfmailparam file="C:\ColdFusion2023\cfusion\wwwroot\coldfusion_task\assets\task14.jpg" disposition="attachment" type="image/jpg">

        </cfmail>

        <p>Greeting email sent successfully!</p>
        
        <!--- Save uploaded image --->
                <cfif IsDefined("form.greetingImage")>
            <cffile action="upload" filefield="form.greetingImage" destination="#expandPath('./assets/')#" nameconflict="makeunique">
        </cfif>

    </cfif>
</cfif>

<form method="post" enctype="multipart/form-data">
    <label for="babyName">Birthday Baby Name:</label><br>
    <input type="text" id="babyName" name="babyName"  required><br><br>
    
    <label for="email">His Email Id:</label><br>
    <input type="email" id="email" name="email"  required><br><br>
    
    <label for="wishes">Birthday Wishes:</label><br>
    <textarea id="wishes" name="wishes" rows="4" required></textarea><br><br>
    
    <label for="greetingImage">Greeting Image:</label><br>
    <input type="file" id="greetingImage" name="greetingImage"><br><br>
    
    <input type="submit" name="submit" value="Send Greeting">
</form>

</body>
</html>
