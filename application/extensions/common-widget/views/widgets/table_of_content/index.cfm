<cfparam name="args.contens" default="" />
<cfparam name="args.rowitems" default="3" />
<cfparam name="args.imagesize" default="normal" />
<cfparam name="args.align" default="left" />

<style>
    .content img {
        max-width: 100%;
    }
    .row.row-content {
        margin-bottom: 30px;
    }
</style>
<cfoutput>
    #renderView( view="/widgets/table_of_content/_content", args=args )#
</cfoutput>