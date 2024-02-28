<!--- InvokeMultiply.cfm --->
<cfset multiplyObject = createObject("component", "components.task15")>

<cfinvoke component="#multiplyObject#" method="multiply" returnvariable="result1">
    <cfinvokeargument name="numbers" value="#createObject('java', 'java.util.ArrayList').init([1, 2])#">
</cfinvoke>
RESULT USING cfinvoke of 2 arguments<br> 
<cfdump  var="#result1#">
<br>

<cfset cfObject = createObject("component", "components.task15")>
<cfset result2 = cfObject.multiply([1, 2])>
RESULT USING cfobject of 2 arguments<br> 
<cfdump  var="#result2#">
<br>

<cfset createObjectResult = multiplyObject.multiply([1, 2])>
RESULT USING createObject of 2 arguments<br> 
<cfdump  var="#createObjectResult#"><br>

<cfinvoke component="components.task15" method="multiply" returnvariable="result3">
    <cfinvokeargument name="numbers" value="#createObject('java', 'java.util.ArrayList').init([1, 2, 3])#">
</cfinvoke>
RESULT USING cfinvoke of 3 arguments<br> 
<cfdump  var="#result3#">
<br>

<cfset cfObject = createObject("component", "components.task15")>
<cfset result4 = cfObject.multiply([1, 2, 3])>
RESULT USING cfobject of 3 arguments<br> 
<cfdump  var="#result4#">
<br>

<cfset result5 = multiplyObject.multiply([1, 2, 3])>
RESULT USING createObject of 3 arguments<br> 
<cfdump  var="#result5#"><br>

<cfinvoke component="components.task15" method="multiply" returnvariable="result6">
    <cfinvokeargument name="numbers" value="#createObject('java', 'java.util.ArrayList').init([1, 2, 3, 4])#">
</cfinvoke>
RESULT USING cfinvoke of 4 arguments<br> 
<cfdump  var="#result6#">
<br>

<cfset cfObject = createObject("component", "components.task15")>
<cfset result7 = cfObject.multiply([1, 2, 3, 4])>
RESULT USING cfobject of 4 arguments<br> 
<cfdump  var="#result7#">
<br>

<cfset result8 = multiplyObject.multiply([1, 2, 3, 4])>
RESULT USING createObject of 4 arguments<br> 
<cfdump  var="#result8#"><br>