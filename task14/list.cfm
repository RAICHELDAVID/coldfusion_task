<!DOCTYPE html>
<html>
<head>
    <title>Image List</title>
</head>
<body>
    <h1>Image List</h1>
    <cfset imageHandler = new components.ImageHandler()>
    <cfset imageList = imageHandler.getImageList()>

    <cfloop array="#imageList#" index="image">
        <cfoutput>
            <img src="#image.thumbnail#" alt="Thumbnail">
            <a href="details.cfm?image=#urlEncodedFormat(image.imagePath)#">#image.imageName#</a><br>
        </cfoutput>
    </cfloop>
</body>
</html>
