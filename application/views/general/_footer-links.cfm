<cfparam name="args.links">
<cfparam name="args.title">

<cfoutput>
    <h3>#args.title#</h3>
    <cfif !isEmpty(args.links)>
        <cfloop list="#args.links#" item="item">
            #renderLink(id = item)#<br />
        </cfloop>
    </cfif>
</cfoutput>


