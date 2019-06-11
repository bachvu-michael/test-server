component {

	public void function configure( required struct config ) {
            var conf         = arguments.config;
            var settings     = conf.settings            ?: {};
            var assetManager = settings.assetManager    ?: {};
            var derivatives  = assetManager.derivatives ?: {};




		settings.enum.icon            = [ "fa-file-image-o","fa-file-pdf-o","fa-fire-extinguisher","fa-flash","fa-forumbee","fa-folder","fa-file-movie-o","fa-file-zip-o"];
		settings.enum.style_button    = [ "circle-button","btn-text","anima-button"];
		settings.enum.size_button     = [ "btn-xs","btn-sm","btn","btn-lg"];

            derivatives.table_of_content = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=300, height=200, maintainaspectratio=true } }
                  ]
            };
            derivatives.table_of_content_small = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=84, height=56, maintainaspectratio=true } }
                  ]
            };
            derivatives.card = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=286, height=180, maintainaspectratio=true } }
                  ]
            };
            derivatives.square200 = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=200, height=200, maintainaspectratio=true } }
                  ]
            };
            derivatives.square50 = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=50, height=50, maintainaspectratio=true } }
                  ]
            };
            derivatives.square60 = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=60, height=60, maintainaspectratio=true } }
                  ]
            };
            derivatives.masonry = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=260, maintainaspectratio=true } }
                  ]
            };
            derivatives.feature = {
                  permissions = "inherit"
                  , transformations = [
                        { method="Resize", args={ width=450, maintainaspectratio=true } }
                  ]
            };
	}

}