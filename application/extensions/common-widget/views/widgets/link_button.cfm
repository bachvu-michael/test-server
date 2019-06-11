<cfparam name="args.title" default="" />
<cfparam name="args.link" default="" />

<cfoutput>
	<div style="text-align: center; margin: 30px 0;">
		<a href="#args.link#" class="btn btn-xl">#args.title#</a>
	</div>
</cfoutput>