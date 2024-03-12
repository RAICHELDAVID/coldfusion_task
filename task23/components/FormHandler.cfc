<cfcomponent>
    
    <cffunction name="saveFormData" access="remote" returntype="void">


        <cfargument name="formData" type="struct" required="true">
        
        <!--- Connect to your SQL Server database --->
        <cfset dataSourceName = "demo">
        <cfset username = "admin">
        <cfset password = "raichel">
        
        <cftry>
            <cfset conn = datasource.getConnection(demo, admin, raichel)>
            <cfcatch type="database">
                <cfdump var="#cfcatch#">
                <cfabort>
            </cfcatch>
        </cftry>
        
        <!--- Prepare SQL insert statement --->
        <cfset insertQuery = "
            INSERT INTO task23_formData (
                PositionAppliedFor,
                WillingToRelocate,
                StartDate,
                PortfolioWebsite,
                ResumeAttachment,
                SalaryRequirements,
                FirstName,
                LastName,
                EmailAddress,
                Phone
            )
            VALUES (
                <cfqueryparam value=""##arguments.formData.PositionAppliedFor##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.WillingToRelocate##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.StartDate##"" cfsqltype=""CF_SQL_DATE"">,
                <cfqueryparam value=""##arguments.formData.PortfolioWebsite##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.ResumeAttachment##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.SalaryRequirements##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.FirstName##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.LastName##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.EmailAddress##"" cfsqltype=""CF_SQL_VARCHAR"">,
                <cfqueryparam value=""##arguments.formData.Phone##"" cfsqltype=""CF_SQL_VARCHAR"">
            )
        " >

        
        <!--- Execute the insert query with the form data --->
        <cfquery name="insertResult" datasource="#demo#">
            #insertQuery#
        </cfquery>
        
        <!--- Close database connection --->
        <cfset conn.close()>
    </cffunction>
    
</cfcomponent>
