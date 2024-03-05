
$(document).ready(function(){
    $("#checkEmail").click(function(){
        var email = $("#email").val();
        $.ajax({
            url: "./components/subscribe_actions.cfc",
            data: {
                method: "checkEmailExists",
                email: email
            },
            success: function(response){

                if(response>=1) {
                    $("#emailStatus").text("Email ID already exists.");
                    $("#subscribeButton").prop("disabled", true);
                } else if(response==0) {
                    $("#emailStatus").text("Email ID is available.");
                    $("#subscribeButton").prop("disabled", false);
                }
            }
        });
    });

    $("#subscribeForm").submit(function(event){
        event.preventDefault();
        var firstName = $("#firstName").val();
        var email = $("#email").val();
        $.ajax({
            url: "./components/subscribe_actions.cfc",
            data: {
                method: "addSubscriber",
                firstName: firstName,
                email: email
            },
            success: function(response){
                console.log("Response from addSubscriber:", response); // Log the response

                if(response) {
                    alert("Subscription successful!");
                    $("#subscribeForm")[0].reset();
                    $("#subscribeButton").prop("disabled", true);
                } else {
                    alert("Subscription failed!");
                }
            }
        });
    });
})

