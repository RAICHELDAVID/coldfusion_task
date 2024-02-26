<cfcomponent>
   <cffunction name="processResult" access="remote">
      TODAYS DATE IS:<br>
      <cfset currentDateAndTime = Now()>
      <cfset currentDate = DateFormat(currentDateAndTime, "mm/dd/yyyy")>
      <cfoutput>#currentDate#</cfoutput>
      <br><br>
      CURRENT MONTH IN NUMERIC:<br>
      <cfset currentMonth = Month(Now())>
      <cfoutput>#currentMonth#</cfoutput>
      <br><br>
      CURRENT MONTH IN WORDS:<br>
      <cfset currentMonth = Month(Now())>
      <cfset currentMonthString = MonthAsString(Month(Now()))>
      <cfoutput>#currentMonthString#</cfoutput>
      <br><br>
      LAST FRIDAY IN MONTH:<br>
      <cfset today = Now()>
      <cfset dayOfWeekToday = DayOfWeek(today)>
      <cfset daysToAdd = 0>
      <cfif dayOfWeekToday gte 6>
         <cfset daysToAdd = 5 - dayOfWeekToday>
         <cfelse>
         <cfset daysToAdd = dayOfWeekToday + 1>
      </cfif>
      <cfset lastFriday = DateAdd("d", -daysToAdd, today)>
      <cfoutput>#DateFormat(lastFriday, "mm/dd/yyyy")#</cfoutput>
      <br><br>
      LAST DAY OF MONTH:<br>
      <cfset currentDate = Now()>
      <cfset lastDayOfMonth = DateAdd("d", -1, DateAdd("m", 1, DateAdd("d", -Day(currentDate) + 1, currentDate)))>
      <cfoutput>#DateFormat(lastDayOfMonth, "mm/dd/yyyy")#</cfoutput>
      <br><br>
      <cfset today = Now()>
      <cfloop index="i" from="-4" to="0">
         <cfset currentDate = DateAdd("d", i, today)>
         <cfoutput>
            <cfif (dayOfWeek(currentDate)) EQ 1>
            <p style="color:red;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            <cfelseif (dayOfWeek(currentDate)) EQ 2>
            <p style="color:green;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            <cfelseif (dayOfWeek(currentDate)) EQ 3>
            <p style="color:orange;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            <cfelseif (dayOfWeek(currentDate)) EQ 4>
            <p style="color:yellow;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            <cfelseif (dayOfWeek(currentDate)) EQ 5>
            <p style="color:black;font-weight:bold;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            <cfelseif (dayOfWeek(currentDate)) EQ 6>
            <p style="color:blue;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            <cfelse>
            <p style="color:red; font-weight:bold;">
               #DateFormat(currentDate, "mm/dd/yyyy")#-#DateFormat(currentDate, "dddd")#
            </p>
            </cfif>
         </cfoutput>
      </cfloop>
   </cffunction>
</cfcomponent>