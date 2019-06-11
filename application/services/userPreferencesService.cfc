/**
 * @singleton
 * @presideService
 *
 */
component {
    
        public any function init() {
            return this;
        }
    
        public string function getLanguage( event, rc, prc ) {
            return structKeyExists(prc,"_languageCode") ? prc._languageCode :'en';
        }
    }