<cf_presideparam name="args.id"         field="common_widget_faq.id" />
<cf_presideparam name="args.question"   field="common_widget_faq.question" />
<cf_presideparam name="args.answer"     field="common_widget_faq.answer" />
<cfset rand = floor( rand() * 1000 )>
<cfoutput>
    <div id="common-widget-faq">
        <div class="toggle">
            <a data-toggle="collapse" href="##div#args.id##rand#" role="button" aria-expanded="false" aria-controls="div#args.id#">
                <div class="toggle-title">
                    <h5>
                        <span class="title-name">#args.question#</span>
                    </h5>
                </div>
            </a>
            <div class="toggle-inner collapse" id="div#args.id##rand#">
                #args.answer#
            </div>
        </div>
    </div>
</cfoutput>