<cfparam name="args.imagesize" default="" />
<cfparam name="args.rowitems" default="" />

<style>
    .common-widget-table-of-content-icons .content-list-icons-item {
        text-align: center;
        height: 145px;
    }
    .common-widget-table-of-content-icons .content-list-icons-item i {
        color: #428bca;
        padding-top: 30px;
    }
    .common-widget-table-of-content-icons .content-list-icons-item .content-list-icons-title {
        color: #111;
    }
    .common-widget-table-of-content-icons .content-list-icons-item:hover {
        background-color: #428bca;
        color: #fff;
        -webkit-transition: all .2s ease-out;
    }
    .common-widget-table-of-content-icons .content-list-icons-item:hover i {
        color: #fff;
    }
    .common-widget-table-of-content-icons .content-list-icons-item:hover .content-list-icons-title {
        color: #fff;
    }
</style>
<cfoutput>
    #renderView( view="/widgets/table_of_content_icons/_content", args=args )#
</cfoutput>