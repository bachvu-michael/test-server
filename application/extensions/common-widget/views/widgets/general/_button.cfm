<cfparam name="args.title"          default="">
<cfparam name="args.link"           default="">
<cfparam name="args.icon"           default="">
<cfparam name="args.iconCustom"     default="">
<cfparam name="args.style"          default="">
<cfparam name="args.size"           default="">
<cfscript>
    icon = "";
    if(!isEmpty(args.iconCustom)){
        icon =args.iconCustom;
    }else{
        icon =args.icon;

    }
</cfscript>
<cfoutput>
    <cfsavecontent variable="content">
        <cfif !isEmpty(icon)>
            <i class="fa #icon#"></i>#args.title#
        <cfelse>
            #args.title#
        </cfif>
    </cfsavecontent>
    #renderLink(
        id = args.link,
        class="#args.style# #args.size#",
        body = content
        )#
</cfoutput>