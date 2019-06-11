<cfparam name="args.info">
<cfparam name="args.icon">

<cfoutput>
    <cfif !isEmpty(args.info)>
        <span><i class="fa #args.icon#"></i>#args.info#</span> <hr />
    </cfif>
</cfoutput>


