<!DOCTYPE html>
<html>
   <head>
      <title>Feedback System</title>
   </head>
   <body>
      <p>Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self
         Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. CFDUMP the structure.
      </p>
      <form action="#CGI.SCRIPT_NAME#" method="post">
         <label for="numbers">Enter the key:</label>
         <input type="text" id="key" name="key" required><br>
         <label for="numbers">Enter the value:</label>
         <input type="text" id="value" name="value" required><br>
         <input type="submit" value="Submit">
      </form>
      <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
      <h2>Submitted Key-Value Pair</h2>
      <cfset data = {}>
      <cfset data[form.key] = form.value>
      <cfdump var="#data#">
      </cfif>
   </body>
</html>