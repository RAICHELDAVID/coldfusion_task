component {

    remote any function checkEmailExists(required string email) {
        var query = new Query();
        query.setDatasource("demo");
        query.setSql("SELECT COUNT(*) AS count FROM subscribers WHERE email = :email");
        query.addParam(name="email", value=email, cfsqltype="cf_sql_varchar");
        var result = query.execute().getResult();
     return result.count > 0;
       
    }
    
 
    remote any function addSubscriber(required string firstName, required string email) {
        var query = new Query();
        query.setDatasource("demo");
        query.setSql("INSERT INTO subscribers (firstName, email) VALUES (:firstName, :email)");
        query.addParam(name="firstName", value=arguments.firstName, cfsqltype="cf_sql_varchar");
        query.addParam(name="email", value=arguments.email, cfsqltype="cf_sql_varchar");
        query.execute();
        return true;
    }
}
