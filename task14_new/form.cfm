<!DOCTYPE html>
<html>
<head>
    <title>image Page</title>
</head>
<body>
    <cfoutput>
        <form action="form.cfm" method="post" enctype="multipart/form-data">
            <label>Image name</label>
            <input type="text" name="name"><br>
            <label>Image description</label>
            <input type="text" name="description"><br>
            <label>upload image</label>
            <input type="file" name="imageUpload" ><br>
            <input type="submit">
        </form>
    </cfoutput>
                <cffile  action="upload"
                    destination="#expandPath('assets/')#"
                    filefield="imageUpload"
                    nameconflict="overwrite"
                    accept="image/jpg,image/gif,image/png,image/jpeg">
<cfinvoke component="components.validation" method="validationFunction">
</body>
</html>
    