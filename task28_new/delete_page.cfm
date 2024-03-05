
<cfif NOT structKeyExists(session, "userid")>
    <cflocation url="login.cfm" addtoken="false">
</cfif>

<cfif session.role NEQ "admin" AND session.role NEQ "editor">
    <cfoutput>Access Denied!</cfoutput>
    <cfabort>
</cfif>

<cfset PageObj = createObject("component", "components.Page")>
<cftry>
    <cfif structKeyExists(url, "pageid")>
        <cfset PageObj.deletePage(url.pageid)>
        <cfoutput>Page with ID #url.pageid# has been deleted successfully.</cfoutput>
    </cfif>
    <cfcatch>
        <cfdump var="#cfcatch#" label="Error occurred during page deletion">
    </cfcatch>
</cftry>

<cflocation url="admin.cfm" addtoken="false">
