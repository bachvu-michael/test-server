<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->

<cf_presideparam name="args.title"         field="page.title"        editable="true" />
<cf_presideparam name="args.main_content"  field="page.main_content" editable="true" />


<cfoutput>
	<a href="/en">Englist</a>
	<a href="/vi">Vietnam</a>
	<h1>#args.title#</h1>
	#args.main_content#
	<cfloop query="#args.data#">
	<P>#args.data.title#</p>
	</cfloop>
</cfoutput>