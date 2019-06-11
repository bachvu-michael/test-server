<cfoutput>
	<cfloop index="i" from="1" to="#args.timelineList.recordCount#">
		<li>
			<a target="_blank" href="#args.timelineList["link"][i]#">#args.timelineList["title"][i]#</a>
			<a target="_blank" href="#args.timelineList["link"][i]#" class="#args.position=='right'?'date-right-position':'date-left-position'#">#dateFormat(args.timelineList["date"][i], "dd-mm-yyyy")#</a>
			<p>#rendercontent("richeditor", args.timelineList["content"][i])#</p>
		</li>
	</cfloop>
</cfoutput>