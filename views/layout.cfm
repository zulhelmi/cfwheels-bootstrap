<cfoutput>
<cfparam name="pageTitle" type="string" default="eServer">
<cfparam name="headerTitle" type="string" default="Dashboard">
<cfparam name="headerSubTitle" type="string" default="">
<cfparam name="breadcrumb" type="string" default="">
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>#pageTitle# | eServer</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    
	#stylesheetLinkTag("bootstrap.min")#
	#stylesheetLinkTag("AdminLTE.min")#
	#stylesheetLinkTag("skins/_all-skins.min")#
	#stylesheetLinkTag("font-awesome.min")#
	#stylesheetLinkTag("dataTables.bootstrap")#    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

    	<header class="main-header">
	        <!-- Logo -->
	        <a href="../../index2.html" class="logo">
	          <!-- mini logo for sidebar mini 50x50 pixels -->
	          <span class="logo-mini"><b>A</b>LT</span>
	          <!-- logo for regular state and mobile devices -->
	          <span class="logo-lg"><b>Admin</b>LTE</span>
	        </a>
	        <!-- Header Navbar: style can be found in header.less -->
	        <nav class="navbar navbar-static-top" role="navigation">
	          <!-- Sidebar toggle button-->
	          <a href="" class="sidebar-toggle" data-toggle="offcanvas" role="button">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </a>
	          <div class="navbar-custom-menu">
	            <ul class="nav navbar-nav">
					<!-- Notifications: style can be found in dropdown.less -->
					<li class="dropdown notifications-menu">
					<a href="" class="dropdown-toggle" data-toggle="dropdown">
					  <i class="fa fa-bell-o"></i>
					  <span class="label label-warning">10</span>
					</a>
					<ul class="dropdown-menu">
					  <li class="header">You have 10 notifications</li>
					  <li>
					    <!-- inner menu: contains the actual data -->
					    <ul class="menu">
					      <li>
					        <a href="">
					          <i class="fa fa-users text-aqua"></i> 5 new members joined today
					        </a>
					      </li>
					      <li>
					        <a href="">
					          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
					        </a>
					      </li>
					      <li>
					        <a href="">
					          <i class="fa fa-users text-red"></i> 5 new members joined
					        </a>
					      </li>

					      <li>
					        <a href="">
					          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
					        </a>
					      </li>
					      <li>
					        <a href="">
					          <i class="fa fa-user text-red"></i> You changed your username
					        </a>
					      </li>
					    </ul>
					  </li>
					  <li class="footer"><a href="">View all</a></li>
					</ul>
					</li>
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu">
					<a href="" class="dropdown-toggle" data-toggle="dropdown">
					  #imageTag(source="user2-160x160.jpg", alt="User Image", class="user-image")#
					  <span class="hidden-xs">Mohamad Zulhelmi</span>
					</a>
					<ul class="dropdown-menu">
					  <!-- User image -->
					  <li class="user-header">
					    #imageTag(source="user2-160x160.jpg", alt="User Image", class="img-circle")#
					    <p>
					      Mohamad Zulhelmi - Web Developer
					      <small>Member since Nov. 2012</small>
					    </p>
					  </li>
					  <!-- Menu Body -->
					  <li class="user-body">
					    <div class="col-xs-4 text-center">
					      <a href="">Followers</a>
					    </div>
					    <div class="col-xs-4 text-center">
					      <a href="">Sales</a>
					    </div>
					    <div class="col-xs-4 text-center">
					      <a href="">Friends</a>
					    </div>
					  </li>
					  <!-- Menu Footer-->
					  <li class="user-footer">
					    <div class="pull-left">
					      <a href="" class="btn btn-default btn-flat">Profile</a>
					    </div>
					    <div class="pull-right">
					      <a href="" class="btn btn-default btn-flat">Sign out</a>
					    </div>
					  </li>
					</ul>
					</li>
	            </ul>
	          </div>
	        </nav>
	    </header>

	      <!-- Left side column. contains the logo and sidebar -->
	    <aside class="main-sidebar">
	    	<!-- sidebar: style can be found in sidebar.less -->
	        <section class="sidebar">
	          <!-- Sidebar user panel -->
	          <div class="user-panel">
	            <div class="pull-left image">
	              #imageTag(source="user2-160x160.jpg", alt="User Image", class="img-circle")#
	            </div>
	            <div class="pull-left info">
	              <p>Mohamad Zulhelmi</p>
	              <a href=""><i class="fa fa-circle text-success"></i> Online</a>
	            </div>
	          </div>
	          <!-- search form -->
	          <form action="" method="get" class="sidebar-form">
	            <div class="input-group">
	              <input type="text" name="q" class="form-control" placeholder="Search...">
	              <span class="input-group-btn">
	                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
	              </span>
	            </div>
	          </form>
	          <!-- /.search form -->
	          <!-- sidebar menu: : style can be found in sidebar.less -->
	          <ul class="sidebar-menu">
	            <li class="header">MAIN NAVIGATION</li>
	            <li>#linkTo(text="<i class='fa fa-dashboard'></i> <span>Dashboard</span>", controller="home", action="dashboard")#</li>
	            <li>#linkTo(text="<i class='fa fa-user'></i> <span>User</span>", controller="users", action="index")#</li>
	          </ul>
	        </section>
	    	<!-- /.sidebar -->
	    </aside>

      	<!-- Content Wrapper. Contains page content -->
      	<div class="content-wrapper">
	        <!-- Content Header (Page header) -->
	        <section class="content-header">
	          <h1>#headerTitle# <small>#headerSubTitle#</small></h1>
	          <ol class="breadcrumb">
	          	<li>#linkTo(text='<i class="fa fa-dashboard"></i> Home', controller="home", action="dashboard")#</li>
	          	<cfloop list="#breadcrumb#" index="page">
		          	<li>#page#</li>
	          	</cfloop>
	          </ol>
	        </section>

	        <!-- Main content -->
	        <section class="content">
	        	<cfif flashKeyExists("success")>
			        <div class="alert alert-success alert-dismissable">
			            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
			            <h4><i class="icon fa fa-check"></i> Success</h4>
			            #flashMessages("success")#
			        </div>
			    <cfelseif flashKeyExists("error")>
			        <div class="alert alert-danger alert-dismissable">
			            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
			            <h4><i class="icon fa fa-warning"></i> Error</h4>
			            #flashMessages("error")#
			        </div>
			    </cfif>
				#includeContent()#
			</section>
		</div>
	</div>
	
	#javaScriptIncludeTag("jQuery-2.1.4.min")#
	#javaScriptIncludeTag("bootstrap.min")#
	#javaScriptIncludeTag("jquery.dataTables.min")#
	#javaScriptIncludeTag("dataTables.bootstrap.min")#
	#javaScriptIncludeTag("jquery.slimscroll.min")#
	#javaScriptIncludeTag("fastclick.min")#
	#javaScriptIncludeTag("jquery.validate.min")#
	#javaScriptIncludeTag("additional-methods.min")#
	#javaScriptIncludeTag("app.min")#
	#javaScriptIncludeTag("custom")#	
  </body>
</html>
</cfoutput>