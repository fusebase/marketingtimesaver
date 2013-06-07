<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>[[++site_name]]</title>
	<meta name="description" content="Marketing Timesaver">
	<meta name="author" content="Mia Davies LLC">
	<meta name="keyword" content="Marketing Timesaver">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link id="bootstrap-style" href="/assets/components/mts/css/bootstrap.min.css" rel="stylesheet">
	<link href="/assets/components/mts/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="/assets/components/mts/css/acme.css" rel="stylesheet">
	<link id="base-style-responsive" href="/assets/components/mts/css/acme-responsive.css" rel="stylesheet">
	<!--<link href="/assets/components/mts/css/retina.css" rel="stylesheet">-->
	<link href="/assets/components/mts/css/mts.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="http://mts.frequency9.modxcloud.com/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="http://mts.frequency9.modxcloud.com/css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<!--link rel="shortcut icon" href="http://mts.frequency9.modxcloud.com/img/favicon.ico">-->
	<!-- end: Favicon -->
</head>
<body class="mts">
    [[$mts.nav.top]]
    <div class="container-fluid">
    	<div class="row-fluid" style="padding-bottom:10px;">
    		<div class="span6">
    			<form class="form-inline" style="margin-bottom:0px;">
    				<label style="font-size:11px;">Current Project:</label>
    				<select id="mts-project-select">
    					[[getResources?
				            &tpl=`mts.project.select.item`
    						&tvFilters=`mts_account==[[+mts.account.id]]`
    						&context=`projects`
    						&parents=`0`
    						&sortby=`pagetitle`
							&sortdir=`ASC`
						]]
    				</select>
    				<label style="font-size:11px;"><a href="#projects">Manage Projects</a></label>
    			</form>
    		</div>
    		<div class="span6">
    			[[$mts.admin.nav]]
    		</div>
    	</div>
		<div class="row-fluid">
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					[[Wayfinder?
						&startId=`3`
						&level=`2`
						&outerClass=`nav nav-tabs nav-stacked main-menu`
						&rowTpl=`mts.nav.item`
					]]
				</div>
			</div>
			<!-- end: Main Menu -->
			<noscript>
				<div class="alert alert-block span11">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>

			<div id="content" class="span11"></div>

        </div><!--/fluid-row-->

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>
		
		<div class="clearfix"></div>
		
		<footer>
			<p>
				<span style="text-align:left;float:left">&copy; <a href="" target="_blank">Mia Davies LLC</a> 2013</span>
				<span class="hidden-phone" style="text-align:right;float:right"></span>
			</p>
		</footer>
				
	</div><!--/.fluid-container-->

	<!-- start: JavaScript-->
	<script src="[[++mts.jquery]]"></script>
	<script src="[[++mts.bootstrap_js]]"></script>
	<script src="http://localhost/js/jquery/jquery.form.js"></script>
	<script src="[[++mts.js]]"></script>
[[$mts.app.admin.js]]
</body>
</html>