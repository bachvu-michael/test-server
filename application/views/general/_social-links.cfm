<cfparam name="args.link">
<cfparam name="args.icon">
<cfoutput>
    <cfif !isEmpty(args.link)>
        <cfsavecontent variable="content">
            <i class="fa #args.icon# text-xs circle"></i>
        </cfsavecontent>
        #renderLink(    id = args.link,
                        target="_blank",
                        "data-social"="share-#args.icon#",
                        body = content )#

    </cfif>
</cfoutput>


