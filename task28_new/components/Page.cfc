<cfcomponent displayname="Page" output="false">

    <cffunction name="getAllPages" access="public" returntype="query">
        <cfquery name="pages" datasource="demo">
            SELECT pageid, pagename, pagedesc
            FROM page
        </cfquery>
        <cfreturn pages>
    </cffunction>
    
    <cffunction name="addPage" access="public" returntype="void">
        <cfargument name="pagename" type="string" required="true">
        <cfargument name="pagedesc" type="string" required="true">
        
        <cfquery name="addPageQuery" datasource="demo">
            INSERT INTO page (pagename, pagedesc) VALUES (
                <cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.pagedesc#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
    </cffunction>
    
    <cffunction name="deletePage" access="public" returntype="void">
        <cfargument name="pageid" type="numeric" required="true">
            <cflog file="application" text="Deleting page with ID: #arguments.pageid#">

        <cfquery name="deletePageQuery" datasource="demo">
            DELETE FROM page WHERE pageid = <cfqueryparam value="#arguments.pageid#" cfsqltype="CF_SQL_INTEGER">
        </cfquery>
    </cffunction>

</cfcomponent>
