<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <p>Get user & his mother date of birth. show users age & At what age his mother delivered him. Tell him how many days are remaining for his & his mother’s birthday.</p>
    <form action="./components/task5.cfc?method=processResult" method="post">
        <label>Enter your DOB</label>
        <input type="date" id="yourDOB" name="yourDOB" required><br><br>
        <label>Enter your MOTHERS DOB</label>
        <input type="date" id="motherDOB" name="motherDOB" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
