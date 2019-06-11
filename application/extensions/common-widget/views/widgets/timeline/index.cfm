<cfparam name="args.title" 		default="">
<cfparam name="args.timelines" 	default="">
<cfparam name="args.position" 	default="right">

<style>
	.common-widget-timeline-div > ul.common-widget-timeline {
		list-style-type: none;
		position: relative;
	}
	.common-widget-timeline-div > ul.common-widget-timeline.left-position {
		margin-left: 70px;
	}
	.common-widget-timeline-div > ul.common-widget-timeline:before {
		content: ' ';
		background: #d4d9df;
		display: inline-block;
		position: absolute;
		left: 29px;
		width: 2px;
		height: 100%;
		/* z-index: 400; */
	}
	.common-widget-timeline-div > ul.common-widget-timeline > li {
		margin: 20px 0;
		padding-left: 20px;
	}
	.common-widget-timeline-div > ul.common-widget-timeline > li:before {
		content: ' ';
		background: white;
		display: inline-block;
		position: absolute;
		border-radius: 50%;
		border: 3px solid #22c0e8;
		left: 20px;
		width: 20px;
		height: 20px;
		/* z-index: 400; */
	}
	.common-widget-timeline-div > ul.common-widget-timeline > li > a.date-left-position {
		margin-left: -130px;
    	float: left;
	}
	.common-widget-timeline-div > ul.common-widget-timeline > li > a.date-right-position {
		float: right;
	}
</style>
<cfoutput>
	<div class="common-widget-timeline-div">
		<h4>#args.title#</h4>
		<ul class="common-widget-timeline #args.position=='left'?'left-position':''#">
			#renderView( view="/widgets/timeline/_timeline", args=args )#
		</ul>
	</div>
</cfoutput>