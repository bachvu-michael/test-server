<cfoutput>
    <div class="row common-widget-table-of-content-icons">
        <cfloop index="i" from="1" to="#args.contentList.recordCount#">
            <a href="#args.contentList["link"][i]#">
                <div class="col-md-#12/val(args.rowitems)# col-sm-6 col-xs-12 content-list-icons-item" style="width: #100/val(args.rowitems)#%">
                    <i class="#args.contentList["icon"][i]#" title="#args.contentList["title"]#"></i>
                    <h4 class="content-list-icons-title">#args.contentList["title"][i]#</h4>
                </div>
            </a>
        </cfloop>
    </div>
</cfoutput>