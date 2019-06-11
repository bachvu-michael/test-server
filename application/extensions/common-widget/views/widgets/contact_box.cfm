<cfparam name="args.title" default="" />
<cfparam name="args.address" default="" />
<cfparam name="args.phone" default="" />
<cfparam name="args.email" default="" />
<cfparam name="args.website" default="" />
<cfparam name="args.content" default="" />

<cfoutput>
	<cfif len(args.title)>
		<div>
			<h5>#args.title#</h5>
		</div>
	</cfif>
	<cfif len(args.address)>
		<div>
			<i class="fa fa-home" aria-hidden="true"></i> #args.address#
		</div>
	</cfif>
	<cfif len(args.phone)>
		<div>
			<i class="fa fa-phone" aria-hidden="true"></i> #args.phone#
		</div>
	</cfif>
	<cfif len(args.email)>
		<div>
			<i class="fa fa-envelope" aria-hidden="true"></i> #args.email#
		</div>
	</cfif>
	<cfif len(args.website)>
		<div>
			<i class="fa fa-globe" aria-hidden="true"></i> #args.website#
		</div>
	</cfif>
	<cfif len(args.content)>
		<div>
			#rendercontent("richeditor", args.content)#
		</div>
	</cfif>
</cfoutput>