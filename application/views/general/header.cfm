<cfscript>
    site        = event.getSite() ?: {};
    header_content = site.header_content ?: "";
    header_links = site.header_links ?: "";
    header_social_links = site.header_social_links ?: "";

</cfscript>
<cfoutput>
    <header class="fixed-top scroll-change" data-menu-anima="fade-in">
        <div class="navbar navbar-default mega-menu-fullwidth navbar-fixed-top" role="navigation">
            <div class="navbar-mini scroll-hide">
                <div class="container">
                    <div class="nav navbar-nav navbar-left">
                        <cfif !isEmpty(trim(header_content))>
                            #renderView(
                                view          = 'general/_header-info'
                            , presideObject = "info_icon"
                            , filter        = "info_icon.id IN (:info_icon.id)"
                            , filterParams  = { "info_icon.id" = listToArray( header_content ) }
                            , orderBy       = "FIELD( info_icon.id, #listQualify( header_content, "'" )# )"
                            )#
                        </cfif>
                    </div>
                    <div class="nav navbar-nav navbar-right">
                        <div class="minisocial-group">
                            <cfif !isEmpty(header_social_links)>
                                #renderView(
                                        view          = 'general/_header-social-links'
                                    , presideObject = "social_links"
                                    , filter        = "social_links.id IN (:social_links.id)"
                                    , filterParams  = { "social_links.id" = listToArray( header_social_links ) }
                                    , orderBy       = "FIELD( social_links.id, #listQualify( header_social_links, "'" )# )"
                                    )#
                            </cfif>
                        </div>
                    </div>
                </div>
            </div>

            <div class="navbar navbar-main">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.html">
                            <img class="logo-default" src="../assets/img/logo.png" alt="logo" />
                            <img class="logo-retina" src="../assets/img/logo-retina.png" alt="logo" />
                        </a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <cfif !isEmpty(header_links)>
                                <cfloop list="#header_links#" item="item">
                                    <li class="dropdown">
                                        #renderLink(
                                            id=item
                                        )#
                                    </li>
                                </cfloop>
                            </cfif>
                        </ul>
                        <div class="nav navbar-nav navbar-right">
                            <!--<div class="search-box-menu">
                                <div class="search-box scrolldown">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                </div>
                                <button type="button" class="btn btn-default btn-search">
                                    <span class="fa fa-search"></span>
                                </button>
                            </div>
                            -->
                            <ul class="nav navbar-nav lan-menu">
                                <li class="dropdown">
                                    <a href="##" class="dropdown-toggle" data-toggle="dropdown" role="button"><img src="../assets/img/en.png" alt="" />En<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="##"><img src="../assets/img/it.png" alt="" />IT</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</cfoutput>