/**
 * @labelField title
 */
component  {
	property name="title" type="string" dbtype="varchar"   maxLength="255" control="textInput";
	property name="image" relationship="many-to-one" relatedTo="asset";
	property name="content" type="string" dbtype="varchar" maxLength="4000"  control="richEditor";
}