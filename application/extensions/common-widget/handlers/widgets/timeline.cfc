component {
    property name="presideObjectService" inject="presideObjectService";

    private function index( event, rc, prc, args={} ) {
        if (len(args.timelines)) {
			args.timelineList = presideObjectService.selectData(
				objectName      = "common_widget_timeline"
				, filter        = "common_widget_timeline.id IN (:common_widget_timeline.id)"
				, filterParams  = { "common_widget_timeline.id" = listToArray( args.timelines ) }
				, orderBy       = "FIELD( common_widget_timeline.id, #listQualify( args.timelines, "'" )# )"
			);
		} else {
			args.timelineList = query();
		}
		return renderView( view='widgets/timeline/index', args=args );
	}
}