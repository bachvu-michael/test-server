<cfparam name="args.link">
<cfparam name="args.icon">
<cfoutput>
    <cfif !isEmpty(args.link)>
        <cfsavecontent variable="content">
            <i class="fa #args.icon#"></i>
        </cfsavecontent>
        #renderLink(    id = args.link,
                        target="_blank",
                        body = content )#

    </cfif>
</cfoutput>


