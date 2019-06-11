/**
 * @labelField title
 */
component  {
	property name="title";
	property name="image" relationship="many-to-one" relatedTo="asset";
	property name="teaser" type="varchar" maxLength="4000" control="textarea";
	property name="link";
}