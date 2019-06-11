component {

	property name="presideObjectService" inject="presideObjectService";

	private function index( event, rc, prc, args={} ) {
		if (len(args.contents)) {
			args.contentList = presideObjectService.selectData(
				objectName = "common_widget_content"
				, filter        = "common_widget_content.id IN (:common_widget_content.id)"
				, filterParams  = { "common_widget_content.id" = listToArray( args.contents ) }
				, orderBy       = "FIELD( common_widget_content.id, #listQualify( args.contents, "'" )# )"
			);
		} else {
			args.contentList = query();
		}

		return renderView( view='widgets/table_of_content/index', args=args );
	}

	private function placeholder( event, rc, prc, args={} ) {
		return renderView( view='widgets/table_of_content/placeholder', args=args );
	}
}