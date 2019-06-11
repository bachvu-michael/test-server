<cfparam name="args.title"  default="" />
<cfscript>
    event       .include( assetId="jq-map"          ,group="botJs");
                //.include( assetId="jq-googleApi"    ,group="botJs");
</cfscript>
<cfoutput>
    <div class="section-empty section-item">
        <div class="google-map" data-coords="10.728049 , 106.707161" data-skin="gray" data-zoom="15.5" data-marker-pos-top="20" data-marker="http://templates.framework-y.com/yellowbusiness/images/marker-map.png"></div>
        <div class="container content">
            <div class="row">
                <div class="col-md-6">
                    <h2>Send a message</h2>
                    <p class="text-color no-margins">We reply within 48 hour.</p>
                    <hr class="space s" />
                    <p>
                        Potenti inceptos, facilisi, pariatur netus, scelerisque. Porta eum, sapiente temporibus, placerat voluptates!
                        Debitis necessitatibus fugito.
                    </p>
                    <hr class="space s" />
                    <form action="http://www.framework-y.com/scripts/php/contact-form.php" class="form-box form-ajax" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <p>Name</p>
                                <input id="name" name="name" placeholder="" type="text" class="form-control form-value" required>
                            </div>
                            <div class="col-md-6">
                                <p>Email</p>
                                <input id="email" name="email" placeholder="" type="email" class="form-control form-value" required>
                            </div>
                        </div>
                        <hr class="space s" />
                        <div class="row">
                            <div class="col-md-12">
                                <p>Messagge</p>
                                <textarea id="messagge" name="messagge" class="form-control form-value" required></textarea>
                                <hr class="space s" />
                                <button class="anima-button btn-border btn-sm btn" type="submit"><i class="fa fa-mail-reply-all"></i>Send messagge</button>
                            </div>
                        </div>
                        <div class="success-box">
                            <div class="alert alert-success">Congratulations. Your message has been sent successfully</div>
                        </div>
                        <div class="error-box">
                            <div class="alert alert-warning">Error, please retry. Your message has not been sent</div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <hr class="space visible-xs" /> 
                    <h2>How to reach us</h2>
                    <p class="text-color no-margins">You can reach by follow the directions</p>
                    <hr class="space s" />
                    <p>
                        Potenti inceptos, facilisi, pariatur netus, scelerisque. Porta eum, sapiente temporibus, placerat voluptates!
                        Debitis necessitatibus fugit nesciunto.
                    </p>
                    <hr class="space s" />
                    <div class="row">
                     
                        <div class="col-md-6">
                            <ul class="fa-ul">
                                <li>
                                    <i class="fa-li fa fa-home"></i>
                                    Sturlly Technologies
                                    PO Box 16122, Collins Street West,
                                
                                </li>
                                <li>
                                    <i class="fa-li fa fa-home"></i>
                                   Studio Massimo
                                    PO Box 16120, Collins Street West,
                                    Victoria 8007, United States.
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="fa-ul">
                                <li><i class="fa-li fa fa-skype"></i> Company.name</li>
                                <li><i class="fa-li fa fa-headphones"></i> (123) 0 123 455669</li>
                                <li><i class="fa-li fa fa-fax"></i> (123) 0 123 455600</li>
                                <li><i class="fa-li fa fa-envelope-o"></i> info@company.com</li>
                                <li><i class="fa-li fa fa-envelope-o"></i> sales@company.com</li>
                            </ul>
                        </div>
                    </div>
                    <hr class="space m" />
                    <div class="btn-group social-group btn-group-icons">
                        <a target="_blank" href="##" data-social="share-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                            <i class="fa fa-facebook text-s circle"></i>
                        </a>
                        <a target="_blank" href="##" data-social="share-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
                            <i class="fa fa-twitter text-s circle"></i>
                        </a>
                        <a target="_blank" href="##" data-social="share-google" data-toggle="tooltip" data-placement="top" title="Google+">
                            <i class="fa fa-google-plus text-s circle"></i>
                        </a>
                        <a target="_blank" href="##" data-social="share-linkedin" data-toggle="tooltip" data-placement="top" title="LinkedIn">
                            <i class="fa fa-linkedin text-s circle"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize"></script>
</cfoutput>
