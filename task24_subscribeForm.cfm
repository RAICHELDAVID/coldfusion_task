<!DOCTYPE html>
<html>
<head>
    <title>Subscribe Form</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#submitButton').prop('disabled', true);

            $('#email').keyup(function() {
                $('#submitButton').prop('disabled', true);
            });

            $('#checkEmail').click(function() {
                var email = $('#email').val();
                $.ajax({
                    url: 'components/task24_checkEmail.cfc?method=checkEmail',
                    type: 'POST',
                    data: { email: email },
                    success: function(response) {
                        if (response == 'exists') {
                            $('#emailStatus').text('Email ID is already registered');
                        } else {
                            $('#emailStatus').text('');
                            $('#submitButton').prop('disabled', false);
                        }
                    }
                });
            });

            $('#subscribeForm').submit(function(e) {
                e.preventDefault();
                var firstName = $('#firstName').val();
                var email = $('#email').val();
                $.ajax({
                    url: 'components/task24_subscribe.cfc?method=subscribe',
                    type: 'POST',
                    data: { firstName: firstName, email: email },
                    success: function(response) {
                        alert(response); // Show success message or handle as needed
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="subscribeForm" action="#">
        <div>
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <button type="button" id="checkEmail">Check</button>
            <span id="emailStatus"></span>
        </div>
        <button type="submit" id="submitButton" disabled>Subscribe</button>
    </form>
</body>
</html>
