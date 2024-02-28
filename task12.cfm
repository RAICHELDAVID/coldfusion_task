<!DOCTYPE html>
<html>
<head>
    <title>Show Nth Row First Name</title>
</head>
<body>
    <form action="components/task12.cfc?method=fetchData" method="post">
        <label for="rowNumber">Enter a number less than 10:</label><br>
        <input type="number" id="rowNumber" name="rowNumber" min="1" max="9"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
