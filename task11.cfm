<cfscript>
    function multiply() {
        var result = 1; 
        var product = ""; 
        
        for (var i = 1; i <= arrayLen(arguments); i++) {
            result *= arguments[i];
            
            // Construct product string
            if (i < arrayLen(arguments)) {
                product &= arguments[i] & " * ";
            } else {
                product &= arguments[i];
            }
        }
        
        return product & " = " & result; 
    }
</cfscript>

<cfset res = multiply(1, 2)>
<cfdump var="#res#">
<br>
<cfset res = multiply(1, 2, 3)>
<cfdump var="#res#">
<br>
<cfset res = multiply(1, 2, 3, 4)>
<cfdump var="#res#">
