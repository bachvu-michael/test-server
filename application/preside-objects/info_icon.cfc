/**
 * @labelField            icon
 * @dataManagerGroup      Metadata
 * @datamanagerAllowedOperations add,edit,delete
 */

component {
    property name="info" type="string" dbtype="varchar" control="textInput" required="true";
	property name="icon" control="select" values="fa-phone,fa-envelope,fa-map-marker,fa-calendar" labels="Phone,Email,Location,Calendar";
}