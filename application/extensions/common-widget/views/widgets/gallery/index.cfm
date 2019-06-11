<cfparam name="args.images" default="">
<style>
	.common-widget-gallery-grid-item {
  		margin-bottom: 10px;
	}
</style>
<cfset rand = floor( rand() * 1000 )>
<cfoutput>
	<div class="grid" id="common-widget-gallery-#rand#">
		<div class="common-widget-gallery-grid-item"></div>
		<cfloop list="#args.images#" index="item">
			<div class="common-widget-gallery-grid-item grid-item--width2">#renderAsset( assetId=item ,args={ derivative="masonry"} )#</div>
		</cfloop>
	</div>
</cfoutput>
<cfsavecontent variable="js"><cfoutput>
<cfinclude template="masonry.pkgd.min.js">
<cfinclude template="imagesloaded.pkgd.min.js">
	// init Masonry
	var grid = document.querySelector('##common-widget-gallery-#rand#');

	var msnry = new Masonry( grid, {
		itemSelector: '.common-widget-gallery-grid-item'
		, columnWidth: 260
		, gutter: 10
	});

	imagesLoaded( grid ).on( 'progress', function() {
		// layout Masonry after each image loads
		msnry.layout();
	});
</cfoutput></cfsavecontent>
<cfset event.includeInlineJs( js ) />