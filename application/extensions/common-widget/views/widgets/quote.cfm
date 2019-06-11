<cfparam name="args.title" default="" />
<cfparam name="args.content" default="" />
<cfparam name="args.source" default="" />

<style>
	.common-widget-blockquote-content {
		padding-left: 20px;
		border-left: 2px solid lightgray;
	}
	.common-widget-blockquote-content p {
		font-style: italic;
	}
	.common-widget-blockquote-footer {
		font-weight: bold;
		font-size: 1rem !important;
	}
</style>
<cfoutput>
	<div clas="container">
		<h5 class="common-widget-blockquote-title">#args.title#</h5>
		<blockquote class="blockquote common-widget-blockquote-content">
			<p>#args.content#</p>
			<footer class="common-widget-blockquote-footer">#args.source#</footer>
		</blockquote>
	</div>
</cfoutput>