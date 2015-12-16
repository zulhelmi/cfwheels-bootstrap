<cfoutput>
<div class="box box-info">
	<!-- form start -->
	#startFormTag(action="create")#
	  <div class="box-body">
	    #textField(objectName="user", property="name", label="Name", type="text", class="form-control", id="name", placeholder="Name", required="required")#
	    #textField(objectName="user", property="email", label="Email", type="email", class="form-control", id="email", placeholder="Email", required="required")#
	    #passwordField(objectName="user", property="password", label="Password", class="form-control", id="password", placeholder="Password", required="required")#
	  </div><!-- /.box-body -->
	  <div class="box-footer">
	    #linkTo(text="Cancel", action="index", class="btn btn-default")#
	    #submitTag()#
	  </div><!-- /.box-footer -->
	#endFormTag()#
</div><!-- /.box -->
</cfoutput>