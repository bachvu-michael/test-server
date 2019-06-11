<cfparam name="args.layout"       default="" />
<cfparam name="args.left_column"  default="" />
<cfparam name="args.right_column" default="" />
<cfscript>
	leftColumnClass  = "col-xs-12";
	rightColumnClass = "col-xs-12";
	leftColumnClass  &= " col-md-" & args.layout;
	rightColumnClass &= " col-md-" & (12 - args.layout);	
</cfscript>
<cfoutput>
	<div class="row">
		<div class="#leftColumnClass#">
			#renderContent( "richeditor", args.left_column )#
		</div>
		<div class="#rightColumnClass#">
			#renderContent( "richeditor", args.right_column )#
		</div>
	</div>
</cfoutput>