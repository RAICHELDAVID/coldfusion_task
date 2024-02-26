<!DOCTYPE html>
<html>
<head>
    <title>Feedback System</title>
</head>
<body>
    <pre>Today's date, current Month in numeric, current month in word, Last friday date, Last day of month. Show Last 5 days date & day like below. 
            Sunday should be red, 
            Monday - green, 
            Tuesday - orange, 
            Wednesday - yellow, 
            Thursday - bold black, 
            Friday - blue, 
            Saturday - bold red

            02-Dec-2010 - Thursday
            01-Dec-2010 - Wednesday
            30-Nov-2010 - Tuesday
            29-Dec-2010 - Monday
            28-Dec-2010 - Sunday
    </pre>
    <form action="./components/task4.cfc?method=processResult" method="post">
        <input type="submit" value="DISPLAY">
    </form>
</body>
</html>
