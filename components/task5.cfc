<cfcomponent>
    <cffunction name="processResult" access="remote">
        <cfargument name="yourDOB" type="date" required="true">
        <cfargument name="motherDOB" type="date" required="true">
        <cfoutput>
            
            <cfset age = dateDiff("yyyy", yourDOB, now())>
            Your present age is:
            #age#<br>
            age of my mother at the time of my birth:
            <cfset motherAge =dateDiff("yyyy", motherDOB, yourDOB)>
            #motherAge#<br>
            days remaining between my and mothers birthday:
            <cfset yourNextBirthday = DateAdd("yyyy", age + 1, yourDOB)>
            <cfset daysUntilYourBirthday = DateDiff("d", Now(), yourNextBirthday)>
            
            
            #daysUntilYourBirthday#<br>

        </cfoutput>
   
    </cffunction>
</cfcomponent>