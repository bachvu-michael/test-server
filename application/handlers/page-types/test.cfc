component {
    property name="presideObjectService" inject="presideObjectService";
	property name="MultilingualPresideObjectService" inject= "MultilingualPresideObjectService";
	private function index( event, rc, prc, args={} ) {
		// TODO: create your handler logic here

		// var data =  MultilingualPresideObjectService.selectTranslation(
		// 	objectName   = "xuan"
		// 	,id = '45EC609E-0A23-4725-9615826DB31F435F'
		// 	,languageId = 'vi'
	  // );

	  // var data2 = MultilingualPresideObjectService.getTranslationStatus(
		// objectName   = "xuan"
		// ,recordId = '45EC609E-0A23-4725-9615826DB31F435F'
	  // )

	  var data = presideObjectService.selectData(
		objectName = "xuan"
  );
		args.data = data;
		return renderView(
			  view          = 'page-types/test/index'
			, presideObject = 'test'
			, id            = event.getCurrentPageId()
			, args          = args
		);
	}
}


