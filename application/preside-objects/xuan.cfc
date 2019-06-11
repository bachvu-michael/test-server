/**
 * @multilingual true
 * @dataManagerGroup Metadata
 * @labelField title
 */

component {
    property name="title" type="string" dbtype="varchar" control="textInput" required="true" multilingual=true;
    property name="des" type="string" dbtype="varchar" control="textInput" required="true";
}