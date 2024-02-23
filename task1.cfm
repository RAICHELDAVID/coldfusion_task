<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <h2>Feedback System</h2>
    <form action="task1.cfm" method="post">
        <label for="rating">Enter a number between 1 and 5:</label><br>
        <input type="number" id="rating" name="ratingValue" min="1" max="5" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
