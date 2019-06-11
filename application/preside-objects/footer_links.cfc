/**
 * @dataManagerGroup Metadata
 * @labelField title
 */

component {
    property name="title" type="string" dbtype="varchar" control="textInput" required="true";
    property name="links" type="string" dbtype="text"    control="linkPicker" quickAdd="true" quickEdit="true" multiple="true" sortable="true";
}