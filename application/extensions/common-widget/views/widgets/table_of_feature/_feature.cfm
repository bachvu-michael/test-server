<cf_presideparam name="args.title"      field="common_widget_features_content.title" />
<cf_presideparam name="args.content"    field="common_widget_features_content.content" />
<cf_presideparam name="args.image"      field="common_widget_features_content.image" />

<cfoutput>
    <div class="col-md-6 common-widget-feature-inline-flex">
        <div>
            #renderAsset( assetId=args.image, args={ derivative="square60", alt="#args.title#", class="common-widget-feature-image" } )#
        </div>
        <div>     
            #renderContent( "richeditor", args.content )#       
        </div>
    </div>
</cfoutput>