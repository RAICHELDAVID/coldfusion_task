<!DOCTYPE html>
<html>
<head>
    <title>Show nth Row Data</title>
</head>
<body>
    <h2>Enter a number less than 10:</h2>
    <form action="showData.cfm" method="post">
        <input type="number" name="rowNumber" min="1" max="10" required>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
