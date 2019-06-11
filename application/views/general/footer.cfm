<cfscript>
    site           = event.getSite()     ?: {};

    footer_links_1 = site.footer_links_1 ?: "";
    footer_links_2   = site.footer_links_2   ?: "";
    social_links = site.social_links ?: "";

    footer_content_1 = site.footer_content_1 ?: "";
    footer_content_2 = site.footer_content_2 ?: "";
</cfscript>
<cfoutput>
	<footer class="footer-base">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 footer-center text-left">
                        <img width="120" src="../assets/img/logo.png" alt="" />
                        <hr class="space m" />
                        <cfif !isEmpty(footer_content_1)>
                            #renderContent( "richeditor", footer_content_1 )#
                        </cfif>
                        <hr class="space m" />
                        <cfif !isEmpty(social_links)>
                            <div class="btn-group social-group btn-group-icons">
                            #renderView(
                                    view          = 'general/_social-links'
                                , presideObject = "social_links"
                                , filter        = "social_links.id IN (:social_links.id)"
                                , filterParams  = { "social_links.id" = listToArray( social_links ) }
                                , orderBy       = "FIELD( social_links.id, #listQualify( social_links, "'" )# )"
                                )#
                            </div>
                        </cfif>
                    </div>
                    <div class="col-md-4 footer-left text-left">
                        <div class="row">
                            <cfif !isEmpty(footer_links_1)>
                                <div class="col-md-6 text-s">
                                    #renderView(
                                        view          = 'general/_footer-links'
                                    , presideObject = "footer_links"
                                    , filter        = "footer_links.id IN (:footer_links.id)"
                                    , filterParams  = { "footer_links.id" = listToArray( footer_links_1 ) }
                                    , orderBy       = "FIELD( footer_links.id, #listQualify( footer_links_1, "'" )# )"
                                    )#
                                </div>
                            </cfif>
                            <cfif !isEmpty(footer_links_2)>
                                <div class="col-md-6 text-s">
                                    #renderView(
                                        view          = 'general/_footer-links'
                                    , presideObject = "footer_links"
                                    , filter        = "footer_links.id IN (:footer_links.id)"
                                    , filterParams  = { "footer_links.id" = listToArray( footer_links_2 ) }
                                    , orderBy       = "FIELD( footer_links.id, #listQualify( footer_links_2, "'" )# )"
                                    )#
                                </div>
                            </cfif>
                        </div>
                    </div>
                    <div class="col-md-4 footer-left text-left">
                        <cfif !isEmpty(footer_content_2)>
                            #renderContent( "richeditor", footer_content_2 )#
                        </cfif>

                        <hr class="space xs" />
                    </div>
                </div>
            </div>
            <div class="row copy-row">
                <div class="col-md-12 copy-text">
                    ©#year(now())# Website made by <a href="http://maysoft.vn/">maysoft.vn</a>
                </div>
            </div>
        </div>
    </footer>
</cfoutput>