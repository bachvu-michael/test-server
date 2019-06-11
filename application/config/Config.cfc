component extends="preside.system.config.Config" {

	public void function configure() {
		super.configure();

		settings.preside_admin_path  = "goldenbase_msadmin";
		settings.system_users        = "sysadmin";
		settings.default_locale      = "en";

		settings.default_log_name    = "goldenbase-v2";
		settings.default_log_level   = "information";
		settings.sql_log_name        = "goldenbase_v2";
		settings.sql_log_level       = "information";

		//settings.ckeditor.defaults.stylesheets.append( "css-bootstrap" );
		//settings.ckeditor.defaults.stylesheets.append( "css-layout" );

		settings.features.websiteUsers.enabled = false;
		settings.features.multilingual.enabled = true;
	}
}
