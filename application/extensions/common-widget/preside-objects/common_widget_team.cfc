/**
 * @labelField name
 */

component {
	property name="name";
	property name="position";
	property name="image" relationship="many-to-one" relatedTo="asset";
	property name="icon" relationship="many-to-one" relatedTo="asset";
	property name="link";
}