/**
 * Sticker bundle configuration file. See: http://sticker.readthedocs.org/
 */
component {

	public void function configure( bundle ) {

		bundle.addAsset( id="jq-jquery"       		, path="/HTWF/scripts/jquery.min.js" 					 );
		bundle.addAsset( id="jq-scripts"      		, path="/HTWF/scripts/script.js" 						 );

		bundle.addAsset( id="jq-bootstrap"       	, path="/HTWF/scripts/bootstrap/js/bootstrap.min.js" 	 );
		bundle.addAsset( id="jq-imagesloaded"       , path="/HTWF/scripts/imagesloaded.min.js" 				 );
		bundle.addAsset( id="jq-isotope"       		, path="/HTWF/scripts/isotope.min.js" 					 );
		bundle.addAsset( id="jq-tab-accordion"      , path="/HTWF/scripts/jquery.tab-accordion.js" 			 );
		bundle.addAsset( id="jq-parallax"       	, path="/HTWF/scripts/parallax.min.js" 					 );
		bundle.addAsset( id="jq-smooth-scroll"      , path="/HTWF/scripts/smooth.scroll.min.js" 			 );
		bundle.addAsset( id="jq-flexslider"      	, path="/HTWF/scripts/flexslider/jquery.flexslider-min.js" 			);
		bundle.addAsset( id="jq-map"      			, path="/HTWF/scripts/google.maps.min.js" 			 				);
		bundle.addAsset( id="jq-googleApi"      	, url="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize" 		);

		bundle.addAsset( id="css-font-awesome"      , path="/HTWF/scripts/font-awesome/css/font-awesome.css"  ,  type="css" );
		bundle.addAsset( id="css-core"     			, path="/css/core/core.css"  ,  type="css"  );


		//bundle.addAsset( id="js-aos"  				, url="https://unpkg.com/aos@2.3.1/dist/aos.js");
		//bundle.addAsset( id="jq-lazy-plugins"       , path="/js/lib/jquery.lazy.plugins.min.js"         );

		bundle.addAssets(
			  directory   = "/js/"
			, match       = function( path ){ return ReFindNoCase( "_[0-9a-f]{8}\..*?\.min.js$", arguments.path ); }
			, idGenerator = function( path ) {
				return ListDeleteAt( path, ListLen( path, "/" ), "/" ) & "/";
			}
		);

		bundle.addAssets(
			  directory   = "/css/"
			, match       = function( path ){ return ReFindNoCase( "_[0-9a-f]{8}\..*?\.min.css$", arguments.path ); }
			, idGenerator = function( path ) {
				return ListDeleteAt( path, ListLen( path, "/" ), "/" ) & "/";
			}
		);

		bundle.asset( "jq-bootstrap" ).after( "jq-jquery" );
		bundle.asset( "jq-scripts" ).after( "jq-jquery" );
		bundle.asset( "jq-imagesloaded" ).after( "jq-jquery" );
		bundle.asset( "jq-tab-accordion" ).after( "jq-jquery" );
		bundle.asset( "jq-parallax" ).after( "jq-jquery" );
		bundle.asset( "jq-isotope" ).after( "jq-jquery" );
		bundle.asset( "jq-smooth-scroll" ).after( "jq-jquery" );

	}

}