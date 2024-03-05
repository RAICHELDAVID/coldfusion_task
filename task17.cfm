<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Number Styling</title>

</head>
<body>

<form action="./components/task17.cfc?method=processInput" id="numberForm">
    Enter a number: <input type="text" id="numberInput" name="numberInput">
    <input type="submit" value="Submit">
</form>

<div id="output"></div>

<script>
document.getElementById("numberForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission

    var numberInput = document.getElementById("numberInput").value;
    if (isNaN(numberInput) || numberInput === "") {
        alert("Please enter a valid numeric value.");
        return;
    }

    // Create a new XMLHttpRequest object
    var xhr = new XMLHttpRequest();

    // Configure the request
    xhr.open("POST", "./components/task17.cfc?method=processInput", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    // Define the function to handle the response
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // Success: Update the output div with the response
                document.getElementById("output").innerHTML = xhr.responseText;
            } else {
                // Error: Display an alert message
                alert("Error: Unable to process the request.");
            }
        }
    };

    // Send the request with the input data
    xhr.send("number=" + encodeURIComponent(numberInput));
});
</script>


</body>
</html>
