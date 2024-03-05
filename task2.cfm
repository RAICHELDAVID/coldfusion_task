<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <p>Create a page with text box & submit button. Input for the text box is any number between 1 to 5. Based upon the user input, you should show the corresponding string. 5 is Very good. 4 is good. 3 is fair. 1 & 2 is Ok. Use cfcase to do this functionality.</p>
    <h2>Feedback System</h2>
    <form action="./components/task2.cfc?method=processFeedback" method="post">
        <label for="rating">Enter a number between 1 and 5:</label><br>
        <input type="number" id="rating" name="ratingValue" min="1" max="5" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
