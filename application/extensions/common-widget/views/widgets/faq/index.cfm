<cfparam name="args.faqs" default="" />

<cfoutput>
	<cfif len(args.faqs)>
		#renderView( view="/widgets/faq/_faq"
			, presideObject = "common_widget_faq"
			, filter        = "common_widget_faq.id IN (:common_widget_faq.id)"
			, filterParams  = { "common_widget_faq.id" = listToArray( args.faqs ) }
			, orderBy       = "FIELD( common_widget_faq.id, #listQualify( args.faqs, "'" )# )"
		)#
	</cfif>
</cfoutput>