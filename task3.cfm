<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <p>Create a page with text box & submit button. Input for the text box is "3,8,9,11,12"
        While click on submit, result page should show numbers divided by 3. So the result  must be 3,9,12. Should use cfcontinue in the appropriate place.</p>
    <h2>NUMBERS DIDVIDED BY 3</h2>
    <form action="./components/task3.cfc?method=processResult" method="post">
        <label for="numbers">Enter numbers separated by commas:</label><br>
        <input type="text" id="numbers" name="numbers" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
