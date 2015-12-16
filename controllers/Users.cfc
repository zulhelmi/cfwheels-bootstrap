<cfcomponent extends="Controller">

    <cffunction name="new">
    	<cfset pageTitle="Create New User">
    	<cfset headerTitle="Create New User">
    	<cfset breadcrumb="Users,Create New User">
        <cfset user = model("users").new()>    
    </cffunction>

    <cffunction name="create">
    	<cfset user = model("user").create(params.user)>
	    <cfset redirectTo(
	        action="index",
	        success="User #user.name# created successfully."
	    )>
	</cffunction>

	<cffunction name="index">
		<cfset pageTitle="Users">
    	<cfset headerTitle="Users">
    	<cfset breadcrumb="Users">
		<cfset users = model("user").findAll(order="name")>
	</cffunction>

	<cffunction name="edit">
		<cfset user = model("user").findByKey(params.key)>
		<cfset pageTitle="Edit User">
    	<cfset headerTitle="Edit User #user.name#">
    	<cfset breadcrumb="Users,Edit User">    	
    </cffunction>

    <cffunction name="update">
	    <cfset user = model("user").findByKey(params.user.id)>
	    <cfset user.update(params.user)>
	    <cfset redirectTo(
	        action="edit",
	        key=user.id,
	        success="User #user.name# updated successfully."
	    )>
	</cffunction>

	<cffunction name="delete">
	    <cfset user = model("user").findByKey(params.key)>
	    <cfset user.delete()>
	    <cfset redirectTo(
	        action="index",
	        success="#user.name# was successfully deleted."
	    )>
	</cffunction>

</cfcomponent>