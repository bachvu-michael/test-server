<cfparam name="args.image"  default="" />
<cfparam name="args.text"   default="" />
<cfparam name="args.color"   default="" />
<cfparam name="args.buttonItem"   default="" />
<cfparam name="args.text"   default="" />
<cfparam name="args.color"  default="##ffffff" />
<cfoutput>
    <div class="section-empty no-paddings-y">
        <div class="container content">
            <div class="row">
                <div class="col-md-5" data-anima="fade-left" data-timeline="asc" data-time="1000" data-timeline-time="400">
                    <hr class="space" />
                    #rendercontent("richeditor", args.text)#
                    <!--
                    <h2 class="text-color anima text-m">Yellow business</h2>
                    <h1 class="text-xl text-normal anima">Designing & creating</h1>
                    <p class="anima">
                        Spaces for many years.
                        We made just the most advanced and user friendly constructions of the planet.
                        Lorem ipsum dolor sit amet consectetur adipiscing elitsed do eiusmod tempore loremboriso.
                    </p>
                    -->
                    <hr class="space s" />
                    <div class="anima">
                        <cfif !isEmpty(args.buttonItem)>
                            #renderView(
                                view          = "/widgets/general/_button"
                              , presideObject = "common_widget_button_HTWF"
                              , filter        = { id=listToArray( args.buttonItem ) }
                              , orderBy       = "FIELD( id, #listqualify( args.buttonItem, "'" )# )"
                            )#
                        </cfif>
                        <!--<a href="##" class="btn btn-lg">Building</a><span class="space"></span>
                        <a href="##" class="btn btn-lg">Construction</a><span class="space"></span>
                        <a href="##" class="btn btn-lg btn-border hidden-xs">Real estate</a>-->
                    </div>
                </div>
                <div class="col-md-7" data-anima="fade-right" data-time="1100">
                    #renderAsset( assetId=args.image, args={ class="banner-background-image",alt="nentangvang company" } )#
                </div>
            </div>
        </div>
    </div>
</cfoutput>