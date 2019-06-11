component {
    property name="presideObjectService" inject="presideObjectService";

	private function index( event, rc, prc, args={} ) {
        args.teamQry = query();
		if (len(args.teams)) {
			args.teamQry = presideObjectService.selectData(
				objectName = "common_widget_team"
				, filter        = "common_widget_team.id IN (:common_widget_team.id)"
				, filterParams  = { "common_widget_team.id" = listToArray( args.teams ) }
				, orderBy       = "FIELD( common_widget_team.id, #listQualify( args.teams, "'" )# )"
			);
		}
		return renderView( view='widgets/team/index', args=args );
	}
}