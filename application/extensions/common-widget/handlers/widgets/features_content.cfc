component {
	property name="presideObjectService" inject="presideObjectService";

	private function index( event, rc, prc, args={} ) {
		if (len(args.featurescontent)) {
			args.contentList = presideObjectService.selectData(
				objectName = "common_widget_features_content"
				, filter        = "common_widget_features_content.id IN (:common_widget_features_content.id)"
				, filterParams  = { "common_widget_features_content.id" = listToArray( args.featurescontent ) }
				, orderBy       = "FIELD( common_widget_features_content.id, #listQualify( args.featurescontent, "'" )# )"
			);
		} else {
			args.contentList = query();
		}

		return renderView( view='widgets/features_content/index', args=args );
	}
}