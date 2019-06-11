<cfparam name="args.features" default="" />
<style>
    .common-widget-feature-inline-flex {
        display: inline-flex;
        margin-bottom: 20px;
    }
    .common-widget-feature-image {
        margin-right: 20px;
    }
    .common-widget-feature-title {
        font-weight: bold;
        line-height: 18px !important;
        font-size: 16px;
        margin-bottom: 5px;
        font-family: 'Roboto Condensed';
    }
</style>
<cfoutput>
    <cfif len(args.features)>
        #renderView( view="/widgets/table_of_feature/_feature"
            , presideObject = "common_widget_features_content"
            , filter        = "common_widget_features_content.id IN (:common_widget_features_content.id)"
            , filterParams  = { "common_widget_features_content.id" = listToArray( args.features ) }
            , orderBy       = "FIELD( common_widget_features_content.id, #listQualify( args.features, "'" )# )"
        )#
    </cfif>
</cfoutput>