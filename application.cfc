component {

    this.name = "FeedbackSystem"; 
    this.sessionManagement = true; 

    function onRequestStart() {
        if (structKeyExists(form, "key") and structKeyExists(form, "value")) {
            application.formValues = structKeyExists(application, "formValues") ? application.formValues : {};

            if (!structKeyExists(application.formValues, form.key)) {
                structInsert(application.formValues, form.key, form.value);
            }
        }
    }

    function onApplicationStart() {
        if (!structKeyExists(application, "formValues")) {
            application.formValues = {};
        }
    }

}
