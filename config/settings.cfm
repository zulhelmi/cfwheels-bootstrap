<cfscript>
	/*
		If you leave these settings commented out, CFWheels will set the data source name to the same name as the folder the application resides in.
	*/

	set(dataSourceName="datasource");
	set(dataSourceUserName="user");
	set(dataSourcePassword="password"); 
    set(functionName='textField,textFieldTag,textArea,textAreaTag,passwordField,passwordFieldTag,select,selectTag,fileField,fileFieldTag', labelClass="col-sm-2 control-label", prepend='<div class="col-sm-10">', prependToLabel='<div class="form-group">', append='</div></div>', labelPlacement='before');
    set(functionName="checkBoxTag", labelPlacement="around", labelClass="controls", prependToLabel="<div class='control-group'>", prepend="<div class='controls'>",	append="</div></div>");
	set(functionName="bootStrapDateTimeSelectTags,bootStrapDateSelectTags");
 	set(functionName="startFormTag", class="form-horizontal validation");
	set(functionName="submitTag", class="btn btn-info pull-right");

	/*
		If you leave this setting commented out, CFWheels will try to determine the URL rewrite capabilities automatically.
		The "URLRewriting" setting can bet set to "on", "partial" or "off".
		To run with "partial" rewriting, the "cgi.path_info" variable needs to be supported by the web server.
		To run with rewriting set to "on", you need to apply the necessary rewrite rules on the web server first.
	*/

	set(URLRewriting="on");
</cfscript>