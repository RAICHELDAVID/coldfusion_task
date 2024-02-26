<!DOCTYPE html>
<html>
   <head>
      <title>Feedback System</title>
   </head>
   <body>
      <p>
         Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
         Create a structure in ColdFusion with the values from the text box. The text entered in textbox one is the key, and the text entered in textbox 2 is the value. Each time you submit the form, the values entered previously should also be shown. 
         It means, if I submit a form with 'ColdFusion', 'super', then I should see a dump with the key as 'ColdFusion' & value as 'Super'.
         Now, If I enter 'php', 'good', then I should see both ColdFusion, php on the screen along with their values.
         CFDUMP the structure.
      </p>
      <form action="#CGI.SCRIPT_NAME#" method="post">
         <label for="numbers">Enter the key:</label>
         <input type="text" id="key" name="key" required><br>
         <label for="numbers">Enter the value:</label>
         <input type="text" id="value" name="value" required><br>
         <input type="submit" value="Submit">
      </form>
      <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
      <cfif not structKeyExists(form, "data")>
      <cfset form.data = {}>
      </cfif>
      <cfset form.data[form.key] = form.value>
      <cfdump var="#form.data#">
      </cfif>
   </body>
</html>