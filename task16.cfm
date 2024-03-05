<cfset data = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]>

<p>matrix</p>
    <cfloop from="1" to="#arrayLen(data)#" index="i">
        
            <cfloop from="1" to="3" index="j">
                <cfset variable = "#data[j][i]#">
                <cfdump  var="#variable#">
            </cfloop>
            <br>
        
    </cfloop>

