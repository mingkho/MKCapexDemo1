var appSettings = {
    "DefaultAppLanguage": "en",
    "ApplicationDisplayName": "My Capex Application",
    "Security-pattern": {
        "oauth2-configuration": {
            "redirect-uris": ["https://<application_hostname>.<custom_domain>/**"]
        }
    },
    "Security-example": {
        "oauth2-configuration": {
            "redirect-uris": ["https://*/**"]
        }
    }
}