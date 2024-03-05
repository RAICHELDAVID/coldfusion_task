<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <h1>Feedback System</h1>
    <p>
        Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also be maintained in the structure.
        It means, if I submit a form with 'ColdFusion', 'super', then the structure should have key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then the structure should have both ColdFusion and php along with their values.
        CFDUMP the structure.
    </p>
    
    <form action="#CGI.SCRIPT_NAME#" method="post">
        <label for="key">Enter the key:</label>
        <input type="text" id="key" name="key" required><br>
        <label for="value">Enter the value:</label>
        <input type="text" id="value" name="value" required><br>
        <input type="submit" value="Submit">
    </form>

    <!-- Include the feedbackComponent.cfc file -->
    <cfinclude template="./components/task10.cfc">
        <cfset task10 = createObject("component", "components.task10")>

    <!-- Call the handleFormSubmission method from the component -->
    <cfset task10.handleFormSubmission(form)>
    
    <!-- Display the structure using CFDUMP -->
    <cfdump var="#session.formData#" label="Form Data Structure">
</body>
</html>
