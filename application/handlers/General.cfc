component extends="preside.system.handlers.General" {
    
        // here, userPreferenceService would be some custom service
        // object that was written to get and set user preferences
        // it is for illustration purposes only and not a core service
        property name="multilingualPresideObjectService" inject="multilingualPresideObjectService";
        property name="userPreferencesService" inject="userPreferencesService";
    
        function requestStart( event, rc, prc ) {
            super.requestStart( argumentCollection=arguments );
            

            var arrayLanguage = someHandlerAction(event, rc, prc);
            var lang = userPreferencesService.getLanguage(event, rc, prc);
            event.setLanguage( lang );
        }

        
        function someHandlerAction( event, rc, prc ) {
            return multilingualPresideObjectService.listLanguages()
        }
    }