component {

    property name="presideObjectService" inject="PresideObjectService";

	private function index( event, rc, prc, args={} ) {
        if (len(args.tabs)) {
            args.tabsQry = presideObjectService.selectData(
                  objectName   = "common_widget_tab"
                , selectFields = ["id", "tab", "content"]
                , filter        = "common_widget_tab.id IN (:common_widget_tab.id)"
                , filterParams  = { "common_widget_tab.id" = listToArray( args.tabs ) }
                , orderBy       = "FIELD( common_widget_tab.id, #listQualify( args.tabs, "'" )# )"
            );
        } else {
            args.tabsQry = query();
        }
		return renderView( view='widgets/tab/index', args=args );
	}
}