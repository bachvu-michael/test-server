<cfoutput>
    <cfloop index="i" from="1" to="#args.contentList.recordCount#">
        <cfif i % args.rowitems == 1>
            <div class="row row-content" class="common-widget-table-of-content">
        </cfif>
                <div class="col-md-#12/val(args.rowitems)# col-sm-6 col-xs-12">
                    <div class="content #(args.align eq 'center')?'text-center':''#" style="margin-bottom: 30px;">
                        <cfif len(args.contentList['link'][i])>
                            <a href="#args.contentList['link'][i]#">
                            #renderAsset( assetId=args.contentList["image"][i], args={ derivative="#args.imagesize#", alt="#args.contentList['title'][i]#" } )#
                            </a>
                        <cfelse>
                            #renderAsset( assetId=args.contentList["image"][i], args={ derivative="#args.imagesize#", alt="#args.contentList['title'][i]#" } )#     
                        </cfif>    
                    </div>
                    <div class="content #(args.align eq 'center')?'text-center':''#">
                        <cfif len(args.contentList['link'][i])>
                            <a href="#args.contentList['link'][i]#">
                                <h4>#args.contentList["title"][i]#</h4>
                            </a>
                        <cfelse>
                            <h4>#args.contentList["title"][i]#</h4>        
                        </cfif>
                    </div>
                    <div class="content">#args.contentList["teaser"][i]#</div>
                </div>
        <cfif (i % args.rowitems == 0) OR (i == args.contentList.recordCount)>
            </div>
        </cfif>
    </cfloop>
</cfoutput>