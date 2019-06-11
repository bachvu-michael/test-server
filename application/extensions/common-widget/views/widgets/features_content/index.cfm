<cfparam name="args.title" default="" />

<style>
    .common-widget-features-content h1,h2,h3,h4,h5,h6 {
        font-weight: 300;
        text-transform: none;
    }
    .common-widget-features-content .content-div {
        padding: 50px 0;
    }
    .common-widget-features-content .features-title {
        background-color: #eee;
        text-align: center;
        padding: 20px 0;
        color: #333;
        font-size: 30px;
        font-weight: 300;
    }
    .common-widget-features-content .wrap {
        margin: 0 auto;
        max-width: 960px;
    }
    .vertical-align {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: row;
    }
</style>

<cfoutput>
    <div class="common-widget-features-content">        
        #renderView( view="/widgets/features_content/_content", args=args )#
    </div>
</cfoutput>