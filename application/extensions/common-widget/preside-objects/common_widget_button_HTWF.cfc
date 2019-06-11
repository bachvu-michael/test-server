/**
 * @labelField title
 */

component {
	property name="title"  type="string" dbtype="varchar" control="textInput"   required="true";
    property name="link"   type="string" dbtype="varchar" control="linkPicker"  required="true";

	property name="icon"        enum="icon" required="false";
    property name="iconCustom"  type="string" dbtype="varchar" control="textInput"   required="false";

	property name="style"      type="string" dbtype="varchar"   required="true";
	property name="size"       type="string" dbtype="varchar"   required="true";

	//property name="image"  type="string" dbtype="varchar" control="assetPicker" required="true";
	//property name="link"   type="string" dbtype="varchar" control="linkPicker"  required="false";
}