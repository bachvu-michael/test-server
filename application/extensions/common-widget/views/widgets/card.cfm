<cfparam name="args.image" default="" />
<cfparam name="args.title" default="" />
<cfparam name="args.subtitle" default="" />
<cfparam name="args.button_text" default="" />
<cfparam name="args.button_link" default="" />
<cfoutput>
	<div class="card" style="width: 18rem; display: inline-flex;">
		#renderAsset( assetId=args.image, args={ derivative="card", alt="#args.title#", class="card-img-top" } )#
		<div class="card-body">
			<h5 class="card-title">#args.title#</h5>
			<h6 class="card-subtitle mb-2 text-muted">#args.subtitle#</h6>
			<p class="card-text">#args.content#</p>
			<cfif len(args.button_text)>
				<a href="#args.button_link#" class="btn btn-outline-primary">#args.button_text#</a>
			</cfif>
		</div>
	</div>
</cfoutput>