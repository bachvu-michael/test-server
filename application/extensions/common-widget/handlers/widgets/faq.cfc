component {
	private function index( event, rc, prc, args={} ) {
		return renderView( view='widgets/faq/index', args=args );
	}

	private function placeholder( event, rc, prc, args={} ) {
		return renderView( view='widgets/faq/placeholder', args=args );
	}
}