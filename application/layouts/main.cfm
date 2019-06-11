<cfscript>
	body     = renderView();
	mainNav  = renderViewlet( "core.navigation.mainNavigation" 	);
	metaTags = renderView( "/general/_pageMetaForHtmlHead" 		);
	adminBar = renderView( "/general/_adminToolbar"        		);

	footer   = renderView( "/general/footer"               	);
	header   = renderView( "/general/header"               	);
	event	.include( assetId="jq-jquery"            	,group="topJs"		)
			.include( assetId="jq-scripts"            	,group="topJs"		)
			.include( assetId="jq-bootstrap"            ,group="botJs"		)
			.include( assetId="jq-imagesloaded"         ,group="botJs"   	)
			.include( assetId="jq-isotope"            	,group="botJs"		)
			.include( assetId="jq-tab-accordion"        ,group="botJs"   	)
			.include( assetId="jq-parallax"            	,group="botJs"		)
			.include( assetId="jq-smooth-scroll"        ,group="botJs" 		)
			.include( assetId="jq-flexslider"        	,group="botJs" 		)

			.include( assetId="css-core"                    				)
			.include( assetId="css-font-awesome"        ,group="botCss"   	);
</cfscript>

<cfoutput><!DOCTYPE html>
<html>
	<head>
		#metaTags#

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		#event.renderIncludes( group="topJs" )#
		#event.renderIncludes( "css" )#

    	<link rel="icon" href="../favicon.png">

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div id="preloader"></div>
		#header#
		<!-- BODY -->
			#body#
		<!-- END BODY -->
		<i class="scroll-top scroll-top-mobile show fa fa-sort-asc"></i>
		#footer#
		#event.renderIncludes( group="botCss" )#
		#event.renderIncludes( group="botJs" )#
		#event.renderIncludes( "js" )#
	</body>
</html></cfoutput>