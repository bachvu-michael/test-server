/**
 * @labelField            icon
 * @dataManagerGroup      Metadata
 * @datamanagerAllowedOperations add,edit,delete
 */

component {
	property name="link" control="linkPicker" quickadd="true" quickedit="true";
	property name="icon" control="select" values="fa-facebook,fa-twitter,fa-google-plus,fa-linkedin" labels="Facebook,Twitter,Google,LinkedIn";
}