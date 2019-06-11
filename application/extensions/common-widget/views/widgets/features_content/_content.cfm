<cfoutput>
    <div class="row">
        <cfloop index="i" from="1" to="#args.contentList.recordCount#">
            <div class="col-md-12 col-sm-12 col-xs-12 content-div" style="#(i%2==0)?'background-color:##eee':'background-color:##fff'#;">
                <div class="row wrap vertical-align">
                    <cfif i%2==0>
                        <div class="col-md-6 col-xs-6">
                            <div>
                                #renderAsset( assetId=args.contentList["image"][i], args={ derivative="feature", alt="#args.contentList['title'][i]#" } )#
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-6">
                            <div>
                                <div class="title">#renderContent( "richeditor", args.contentList["content"][i] )#</div>
                            </div>
                        </div>
                    <cfelse>
                        <div class="col-md-6 col-xs-6">
                            <div>
                                <div class="title">#renderContent( "richeditor", args.contentList["content"][i] )#</div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-6">
                            <div>
                                #renderAsset( assetId=args.contentList["image"][i], args={ derivative="feature", alt="#args.contentList['title'][i]#" } )#
                            </div>
                        </div>
                    </cfif>
                </div>
            </div>
        </cfloop>
    </div>
</cfoutput>