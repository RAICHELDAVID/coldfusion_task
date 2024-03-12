<!DOCTYPE html>
<html>
<head>
    <title>Image Details</title>
</head>
<body>
    <h1>Image Details</h1>
    <cfparam name="url.image" default="">
    <cfset imageHandler = new components.ImageHandler()>
    <cfset imageDetails = imageHandler.getImageDetails(url.image)>
    
    <cfoutput>
        <p><strong>Image Name:</strong> #imageDetails.imageName#</p>
        <p><strong>Description:</strong> #imageDetails.description#</p>
        <img src="#imageDetails.imagePath#" alt="Original Image">
    </cfoutput>
</body>
</html>

