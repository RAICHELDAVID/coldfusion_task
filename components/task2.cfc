<cfcomponent>
   <cffunction name="processFeedback" access="remote" returntype="string">
      <cfargument name="ratingValue" type="numeric" required="true">
      <cfparam name="form.ratingValue" default="0">
      <cfswitch expression="#form.ratingValue#">
         <cfcase value="5">
            <p>Very good</p>
         </cfcase>
         <cfcase value="4">
            <p>Good</p>
         </cfcase>
         <cfcase value="3">
            <p>Fair</p>
         </cfcase>
         <cfcase value="2">
            <p>OK</p>
         </cfcase>
         <cfcase value="1">
            <p>OK</p>
         </cfcase>
         <cfdefaultcase>
            <p>Invalid input. Please enter a number between 1 and 5.</p>
         </cfdefaultcase>
      </cfswitch>
   </cffunction>
</cfcomponent>