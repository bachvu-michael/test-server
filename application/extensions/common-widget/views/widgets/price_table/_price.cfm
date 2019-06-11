<cfparam name="args.column" default="6" />

<cfoutput>
    <cfloop index="i" from="1" to="#args.prices.recordCount#">
        <div class="col-md-#args.column#">
            <div class="price-wrap">
                <div>
                    <h3>#args.prices["title"][i]#</h3>
                </div>
                <div>
                    <p>#args.prices["description"][i]#</p>
                </div>
                <div class="price">
                    #args.prices["price"][i]#
                </div>
                <div class="feature">
                    #renderContent("richeditor", args.prices["feature"][i])#
                </div>
                <div class="button-div">
                    <cfif len(args.prices["button"][i])>
                        <a href="#args.prices["link"][i]#" class="btn btn-xl">#args.prices["button"][i]#</a>
                    </cfif>
                </div>
            </div>
        </div>
    </cfloop>
</cfoutput>