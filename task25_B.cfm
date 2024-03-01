<cfset dsn = "demo">

<cfquery datasource="#dsn#" name="dbConnection">
    SELECT 1
</cfquery>

<cfif dbConnection.recordCount>

    <!--- Retrieve words from the database --->
    <cfquery name="getWords" datasource="demo">
        SELECT Word
        FROM WordTable_TASK25
    </cfquery>

    <!--- Initialize a structure to store word counts --->
    <cfset wordCounts = {}>

    <!--- Loop through the retrieved records to count words --->
    <cfloop query="getWords">
        <!--- Get the current word from the query --->
        <cfset currentWord = getWords.Word>

        <!--- Check if the word meets the criteria --->
        <cfif len(trim(currentWord)) >= 3 AND NOT isNumeric(trim(currentWord))>
            <!--- Increment word count in the structure --->
            <cfif structKeyExists(wordCounts, currentWord)>
                <cfset wordCounts[currentWord] = wordCounts[currentWord] + 1>
            <cfelse>
                <cfset wordCounts[currentWord] = 1>
            </cfif>
        </cfif>
    </cfloop>

    <!--- Convert the structure to an array of structures for sorting --->
    <cfset sortedArray = []>
    <cfloop item="word" collection="#wordCounts#">
        <cfset arrayAppend(sortedArray, {"Word": word, "Count": wordCounts[word]})>
    </cfloop>
    

    <!--- Sort the array by count (in descending order) --->
    <cfset arraySort(sortedArray, "numeric", "desc", "Count")>

    <!--- Sort the array by length of word (in descending order) --->
    <cfset arraySort(sortedArray, "numeric", "desc", function(a, b) {
        return len(a.Word) < len(b.Word) ? -1 : len(a.Word) > len(b.Word) ? 1 : 0;
    })>

    <!--- Sort the array alphabetically by the word itself --->
    <cfset arraySort(sortedArray, "text", "asc", "Word")>

    <!--- Display the sorted results --->
    <cfoutput>
        <ul>
        <cfloop array="#sortedArray#" index="word">
            <cfif len(trim(word.Word)) gte 3>
                <li>#word.Word# (#word.Count#)</li>
            </cfif>
        </cfloop>
        </ul>
    </cfoutput>
<!--- Custom sorting function to sort by Count in descending order --->

<cfscript>
function sortByCountDescending(a, b) {
    return a.Count < b.Count ? 1 : (a.Count > b.Count ? -1 : 0);
}
</cfscript>

<!--- Sort the array by count (in descending order) using the custom sorting function --->
<cfset arraySort(sortedArray, sortByCountDescending)>

<!--- Display the sorted results --->
<cfoutput>
    <ul>
    <cfloop array="#sortedArray#" index="word">
        <cfif len(trim(word.Word)) gte 3>
            <li>#word.Word# (#word.Count#)</li>
        </cfif>
    </cfloop>
    </ul>
</cfoutput>

<cfelse>
    <!--- Database connection failed --->
    <cfoutput>Error: Unable to establish a database connection.</cfoutput>
</cfif>

