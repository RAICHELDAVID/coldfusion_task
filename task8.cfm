<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <h1>Feedback System</h1>
    <p>
        Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in textbox one is the key, and the text entered in textbox 2 is the value. Each time you submit the form, the values entered previously should also be shown.
        CFDUMP the structure.
    </p>
    
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label for="key">Enter the key:</label>
        <input type="text" id="key" name="key" required><br>
        <label for="value">Enter the value:</label>
        <input type="text" id="value" name="value" required><br>
        <input type="submit" value="Submit">
        <input type="hidden" name="submitted" value="true">
    </form>
    
    <h2>Key-Value Pairs Entered:</h2>

    <cfinclude template="./components/task8.cfc">
        <cfset task8 = createObject("component", "components.task8")>

    <cfset task8.handleFormSubmission(form)>

    <cfdump var="#task8.getKeyValues()#" label="Key-Value Structure">
</body>
</html>
