<cfparam name="args.tabsQry">
<cfset random = floor( rand() * 1000 )>
<cfoutput>
    <cfif args.tabsQry.recordCount>
        <ul class="nav nav-tabs" role="tablist">
            <cfloop index="i" from="1" to="#args.tabsQry.recordCount#">
                <li class="nav-item #(i==1)?'active':''#">
                    <a class="nav-link" data-toggle="tab" href="##div#args.tabsQry['id'][i]##random#" role="tab">#args.tabsQry['tab'][i]#</a>
                </li>
            </cfloop>
        </ul>
        <div class="tab-content">
            <cfloop index="i" from="1" to="#args.tabsQry.recordCount#">
                <div class="tab-pane fade #(i==1)?'in active':''#" id="div#args.tabsQry['id'][i]##random#" role="tabpanel">#rendercontent("richeditor", args.tabsQry['content'][i])#</div>
            </cfloop>
        </div>
    </cfif>
</cfoutput>