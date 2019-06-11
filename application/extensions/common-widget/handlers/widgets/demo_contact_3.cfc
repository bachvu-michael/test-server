component {
	private function index( event, rc, prc, args={} ) {
        // TODO: create your handler logic here
        
        //dump(event);abort;
		return renderView( view='widgets/demo_contact_3/index', args=args );
	}

	private function placeholder( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView( view='widgets/demo_contact_3/placeholder', args=args );
	}
}