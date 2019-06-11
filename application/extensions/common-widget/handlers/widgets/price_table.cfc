component {
	property name="presideObjectService" inject="presideObjectService";

	private function index( event, rc, prc, args={} ) {
		if (len(args.pricelist)) {
			args.prices = presideObjectService.selectData(
				objectName      = "common_widget_price"
				, filter        = "common_widget_price.id IN (:common_widget_price.id)"
				, filterParams  = { "common_widget_price.id" = listToArray( args.pricelist ) }
				, orderBy       = "FIELD( common_widget_price.id, #listQualify( args.pricelist, "'" )# )"
			);
		} else {
			args.prices = query();
		}

		return renderView( view='widgets/price_table/index', args=args );
	}
}