component {

	property name="presideObjectService" inject="presideObjectService";

	private function index( event, rc, prc, args={} ) {
		if (len(args.contents)) {
			args.contentList = presideObjectService.selectData(
				objectName = "common_widget_content_icon"
				, filter        = "common_widget_content_icon.id IN (:common_widget_content_icon.id)"
				, filterParams  = { "common_widget_content_icon.id" = listToArray( args.contents ) }
				, orderBy       = "FIELD( common_widget_content_icon.id, #listQualify( args.contents, "'" )# )"
			);
		} else {
			args.contentList = query();
		}

		return renderView( view='widgets/table_of_content_icons/index', args=args );
	}
}