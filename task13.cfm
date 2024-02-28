<!--- index.cfm --->
<!DOCTYPE html>
<html>
<head>
    <title>Keyword Search</title>
</head>
<body>

    <!--- Form to input keyword --->
    <form method="post" action="./components/task13.cfc?method=processFeedback">
        <label for="keyword">Enter a keyword:</label>
        <input type="text" id="keyword" name="keyword">
        <button type="submit">Submit</button>
    </form>

    <!--- Processing form submission and displaying result --->
    <cfparam name="form.keyword" default="">
    <cfif len(trim(form.keyword)) gt 0>
        <cfset keywordSearch = createObject("component", "KeywordSearch")>
        <cfset result = keywordSearch.searchKeyword(form.keyword)>
        <p>#result#</p>
    </cfif>

</body>
</html>
