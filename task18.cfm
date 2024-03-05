<cfscript>
    // Create a new empty query with three columns
    myQuery = QueryNew("Email, ID, Name", "Varchar, Integer, Varchar");

    // Add rows to the query and set cell values
    QueryAddRow(myQuery, 3); // Add 3 rows

    // Set cell values for each row in the desired order
    QuerySetCell(myQuery, "Email", "raicheldavid22@gmail.com", 1);
    QuerySetCell(myQuery, "ID", 1, 1);
    QuerySetCell(myQuery, "Name", "Raichel David", 1);

    QuerySetCell(myQuery, "Email", "saji@gmail.com", 2);
    QuerySetCell(myQuery, "ID", 2, 2);
    QuerySetCell(myQuery, "Name", "Saji David", 2);

    QuerySetCell(myQuery, "Email", "david@gmail.com", 3);
    QuerySetCell(myQuery, "ID", 3, 3);
    QuerySetCell(myQuery, "Name", "David Philip", 3);

    // Output the query variable
    writeDump(myQuery);
</cfscript>
